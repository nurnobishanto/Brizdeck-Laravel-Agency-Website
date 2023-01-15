<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Category;
use App\Models\Tag;
use Stichoza\GoogleTranslate\GoogleTranslate;
use Session;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public function __construct() {

        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
            
        $categories = Category::All();
        $tags = Tag::All();
        $poularpost = Post::orderBy('view_count','DESC')->where('status','=','PUBLISHED')->take(3)->get();

        \View::share('allcategories', $categories);
        \View::share('alltags', $tags);
        \View::share('poularpost', $poularpost);
        \View::share('tr', $tr);
        //view()->share('teamname', 'Latest 2021 Players Teams');
     }
}
