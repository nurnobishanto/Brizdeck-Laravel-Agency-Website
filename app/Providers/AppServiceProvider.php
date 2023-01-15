<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Collection;
use Illuminate\Pagination\Paginator;
use Illuminate\Pagination\LengthAwarePaginator;
use Stichoza\GoogleTranslate\GoogleTranslate;
use Session;
use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Category;
use App\Models\Tag;
use Illuminate\Support\Facades\View;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        if (!Collection::hasMacro('paginate')) {
            Collection::macro('paginate', 
                function ($perPage = 15, $page = null, $options = []) {
                $page = $page ?: (Paginator::resolveCurrentPage() ?: 1);
                return (new LengthAwarePaginator(
                    $this->forPage($page, $perPage), $this->count(), $perPage, $page, $options))
                    ->withPath('');
            });
        }
        
        
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

       
        
           
       
        
    }
}
