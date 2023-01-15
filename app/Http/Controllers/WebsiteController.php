<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Category;
use App\Models\Tag;
use App\Models\Section;
use App\Models\User;
use App\Models\Faq;
use App\Models\Brand;
use App\Models\Testimonial;
use App\Models\Service;
use App\Models\Skill;
use App\Models\Team;
use App\Models\Project;
use App\Models\Gallery;
use Illuminate\Support\Str;
use App\Http\Controllers\Dispatch;
use Session;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;
use Artesaos\SEOTools\Facades\JsonLdMulti;
use Artesaos\SEOTools\Facades\SEOTools;
use Stichoza\GoogleTranslate\GoogleTranslate;
use Illuminate\Support\Facades\View;


class WebsiteController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('pagespeed');
    }
 
    public function lang($lang){Session::put('lang' ,$lang);return redirect()->back();}
    public function index(){
        // Translate to Georgian
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
            

        if(request()->query('search')){

            $search = request()->query('search');
            SEOTools::setTitle($search);
            $searchpost = Post::where('body','LIKE',"%{$search}%")->where('title','LIKE',"%{$search}%")->where('status','=','PUBLISHED')->orderBy('created_at','DESC')->paginate(6);
            return view('website.search', compact('searchpost')); 
        }else{

            
        SEOTools::setTitle('Powerful Websites Development and Digital Marketing Agency');
        SEOTools::setDescription('Digital Marketing and Websites Development Services Agency');

       
        $services = Service::orderBy('created_at','DESC')->take(6)->get();
        $projects = Project::orderBy('created_at','DESC')->take(2)->get();
        $allposts = Post::orderBy('created_at','DESC')->inRandomOrder()->limit(3)->get();
        $faqs = Faq::all()->random(2);
        $skills = Skill::all()->random(2);
        $teams = Team::orderBy('created_at','ASC')->paginate(6);
        $testimonials = Testimonial::orderBy('created_at','DESC')->get();
        
        $hero_section = Section::where('slug','hero-section')->first();
        $about = Section::where('slug','about')->first();
        $services_section = Section::where('slug','services')->first();
        $wcus_section = Section::where('slug','why-choose-us')->first();
        $portfolio_section = Section::where('slug','portfolio')->first();
        $expertise_section = Section::where('slug','expertise')->first();
        $review_section = Section::where('slug','review')->first();
        $team_section = Section::where('slug','team')->first();
        $ask_section = Section::where('slug','ask')->first();
        $blog_section = Section::where('slug','blog')->first();
       
        
           return view('website.home',compact(['tr','services','projects','testimonials',
           'allposts','faqs','skills','teams','hero_section','about','services_section',
           'wcus_section','portfolio_section','expertise_section','review_section',
            'team_section','ask_section','blog_section'])); 
        }  
    }
    public function blog(){
        
         // Translate to Georgian
         $tr = new GoogleTranslate(); 
         $tr->setSource('en'); 
         if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
         
        SEOTools::setTitle($tr->translate("Blog"));
        $allposts = Post::orderBy('created_at','DESC')->where('status','=','PUBLISHED')->paginate(6);
        //return view('website.blog',compact(['allposts','tr']));
        return view('website.blogfluide',compact('allposts'));
    }
    public function post($slug){
        // Translate to Georgian
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }     
        $post = Post::where('slug',$slug)->first();     
        if($post){
             $comments = $post->comments->paginate(20);
             $postKey = 'postkey_'.$post->id;
             if(!Session::has($postKey)){
            $post->increment('view_count');
            Session::put($postKey ,1);
           
             }  
             SEOTools::setTitle($tr->translate($post->title));
             $url = env("APP_URL");
             $shareComponent = \Share::page( env("APP_URL") ."/".$post->slug,$tr->translate($post->title),
            )
            ->facebook()
            ->twitter()
            ->linkedin()
            ->telegram()
            ->whatsapp()        
            ->reddit();
            
             return view('website.post',compact(['post','comments','tr','shareComponent']));       
        } 
        else{
            SEOTools::setTitle($tr->translate("404 Error"));
            return view('website.404',compact('tr'));
        }
       
      
    }
    public function tagclouds(){
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
        SEOTools::setTitle($tr->translate("Tags"));
        return view('website.tagclouds',compact('tr'));
    }
    public function tag($slug){
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
        
        $tag = Tag::where('slug',$slug)->first();
        $tagposts = Tag::where('slug',$slug)->first()->posts->paginate(6);
        $tagname = $tag->name;
        SEOTools::setTitle($tr->translate($tagname));
        return view('website.tag',compact(['tagposts','tagname','tr']));
    }
   
    public function categoryclouds(){
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
        SEOTools::setTitle($tr->translate("Categories"));
        return view('website.categoryclouds',compact('tr'));
    }
    public function category($slug){
   
        $category = Category::where('slug',$slug)->first();
        $categoryposts = $category->posts->paginate(6);
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
        SEOTools::setTitle($tr->translate($category->name));
        return view('website.category',compact(['categoryposts','category','tr']));
    }
    public function author($slug){
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
        $author = User::where('slug',$slug)->first();
        SEOTools::setTitle($tr->translate($author->name));
        $authorposts = Post::where('author_id',$author->id)->paginate(6);
        return view('website.author',compact(['authorposts','author','tr']));
    }
    public function faq(){
            $tr = new GoogleTranslate(); 
            $tr->setSource('en'); 
            if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
            $ask_section = Section::where('slug','ask')->first();
            SEOTools::setTitle($tr->translate($ask_section->title));
            
            $faqs = Faq::orderBy('created_at','DESC')->get();
            $brands = Brand::orderBy('created_at','DESC')->get();
            return view('website.faq', compact(['faqs','brands','tr','ask_section']));
        }
    public function testimonials(){
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
        $review_section = Section::where('slug','review')->first();
        SEOTools::setTitle($tr->translate($review_section->title));
        $testimonials = Testimonial::orderBy('created_at','DESC')->paginate(6);;
        $brands = Brand::orderBy('created_at','DESC')->get();
        return view('website.testimonials', compact(['brands','testimonials','tr','review_section']));
    }
    public function services(){
          // Translate to Georgian
          $tr = new GoogleTranslate(); 
          $tr->setSource('en'); 
          if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
         
        $services_section = Section::where('slug','services')->first();
        $review_section = Section::where('slug','review')->first();
        $testimonials = Testimonial::orderBy('created_at','DESC')->get();
        $services = Service::orderBy('created_at','DESC')->paginate(6);

        SEOTools::setTitle($tr->translate("Services"));

        return view('website.services', compact(['services','testimonials','services_section','tr','review_section']));
    }
    public function service($slug){
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
         

        $services = Service::orderBy('created_at','DESC')->get();
        $service = Service::where('slug',$slug)->first();
        SEOTools::setTitle($tr->translate($service->title));
        return view('website.servicesdetails', compact(['service','services','tr']));
    }
    public function teams(){
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
        $team_section = Section::where('slug','team')->first();
        SEOTools::setTitle($tr->translate($team_section->title));
        $faqs = Faq::all()->random(2);
        $skills = Skill::all()->random(2);
        $teams = Team::orderBy('created_at','ASC')->paginate(6);
        $ask_section = Section::where('slug','ask')->first();

        return view('website.teams', compact(['teams','faqs','skills','team_section','tr','ask_section']));
    }
    public function team($slug)
    {
        $member = Team::where('slug',$slug)->first();
        $services = Service::orderBy('created_at','DESC')->get();
        $service = Service::where('slug',$slug)->first();
        return view('website.member', compact(['service','services']));
    }
    public function about(){  
        // Translate to Georgian
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
        $about = Section::where('slug','about')->first();
        SEOTools::setTitle($tr->translate($about->title));
        $contact_section = Section::where('slug','contact')->first();
        $services = Service::orderBy('created_at','DESC')->take(6)->get();
        $testimonials = Testimonial::orderBy('created_at','DESC')->get();
        $review_section = Section::where('slug','review')->first();   
        $wcus_section = Section::where('slug','why-choose-us')->first();
        return view('website.about',compact(['about','review_section','testimonials','services','tr','contact_section','wcus_section']));
    }

    public function projects(){
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }
        $portfolio_section = Section::where('slug','portfolio')->first();
        $review_section = Section::where('slug','review')->first();
        $expertise_section = Section::where('slug','expertise')->first();
        SEOTools::setTitle($tr->translate($portfolio_section->title));
        $testimonials = Testimonial::orderBy('created_at','DESC')->get();
        $projects = Project::orderBy('created_at','DESC')->paginate(6);

        return view('website.projects', compact(['projects','testimonials','portfolio_section','tr','review_section','expertise_section']));
    }
    public function project($slug)
    {
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }
        $project = Project::where('slug',$slug)->first();
        SEOTools::setTitle($tr->translate($project->title));
        $portfolio_section = Section::where('slug','portfolio')->first();
        $projects = Project::orderBy('created_at','DESC')->limit(2)->get();
        return view('website.projectdetails', compact(['project','projects','tr','portfolio_section']));
    }


    public function terms()
    {
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }
    
        SEOTools::setTitle($tr->translate("Terms and Condition"));
        $page = Page::where('title','LIKE','terms%')->first();
        return view('website.page',compact(['page','tr']));
    }
    public function privacy()
    {
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }
        SEOTools::setTitle($tr->translate("Privacy Policy"));
        $page = Page::where('title','LIKE','privacy%')->first();
        return view('website.page',compact(['page','tr']));
    }
    public function page($slug){
       
        $page = Page::where('slug',$slug)->where('status','ACTIVE')->first();
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }
        SEOTools::setTitle($tr->translate($page->title));
        if($page){
            return view('website.page',compact(['page','tr']));
        }
        else
        {
            SEOTools::setTitle($tr->translate("404 Error"));
            return view('website.404',compact('tr')); 
        }
        
        
    }
    public function gallery(){
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }
        SEOTools::setTitle("Gallery");
        $galleries = Gallery::All();
        return view('website.gallery',compact(['galleries','tr']));
    }

}
