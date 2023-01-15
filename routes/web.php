<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SocialShareController;
use Spatie\Sitemap\SitemapGenerator;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\Tags\Url;
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





/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Auth::routes();
Route::get('/login/{social}',[App\Http\Controllers\Auth\LoginController::class, 'socialLogin'])->where('social','twitter|facebook|linkedin|google|github|bitbucket');
Route::get('/login/{social}/callback',[App\Http\Controllers\Auth\LoginController::class, 'handleProviderCallback'])->where('social','twitter|facebook|linkedin|google|github|bitbucket');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::post('/comment', [App\Http\Controllers\HomeController::class, 'comment'])->name('website.comment');
Route::post('/contactstore', [App\Http\Controllers\ContactController::class, 'storeComment'])->name('comment.store');

Route::get('/', [App\Http\Controllers\WebsiteController::class, 'index'])->name('website');
Route::get('/blog', [App\Http\Controllers\WebsiteController::class, 'blog'])->name('website.blog');
Route::get('/tag', [App\Http\Controllers\WebsiteController::class, 'tagclouds'])->name('website.tagclouds');
Route::get('/tag/{slug}', [App\Http\Controllers\WebsiteController::class, 'tag'])->name('website.tag');
Route::get('/category', [App\Http\Controllers\WebsiteController::class, 'categoryclouds'])->name('website.categoryclouds');
Route::get('/category/{slug}', [App\Http\Controllers\WebsiteController::class, 'category'])->name('website.category');
Route::get('/author/{slug}', [App\Http\Controllers\WebsiteController::class, 'author'])->name('website.author');
Route::get('/contact', [App\Http\Controllers\ContactController::class, 'contact'])->name('website.contact');
Route::get('/about', [App\Http\Controllers\WebsiteController::class, 'about'])->name('website.about');
Route::post('/contact-form', [App\Http\Controllers\ContactController::class, 'storeContactForm'])->name('contactform.store');
Route::get('/faq', [App\Http\Controllers\WebsiteController::class, 'faq'])->name('website.faq');
Route::get('/testimonials', [App\Http\Controllers\WebsiteController::class, 'testimonials'])->name('website.testimonials');
Route::get('/services', [App\Http\Controllers\WebsiteController::class, 'services'])->name('website.services');
Route::get('/service/{slug}', [App\Http\Controllers\WebsiteController::class, 'service'])->name('website.service');
Route::get('/team', [App\Http\Controllers\WebsiteController::class, 'teams'])->name('website.teams');
Route::get('/team/{slug}', [App\Http\Controllers\WebsiteController::class, 'team'])->name('website.team');
Route::get('/portfolio', [App\Http\Controllers\WebsiteController::class, 'projects'])->name('website.projects');
Route::get('/portfolio/{slug}', [App\Http\Controllers\WebsiteController::class, 'project'])->name('website.project');

Route::get('/privacy', [App\Http\Controllers\WebsiteController::class, 'privacy'])->name('website.privacy');
Route::get('/terms-of-condition', [App\Http\Controllers\WebsiteController::class, 'terms'])->name('website.terms');
Route::get('/gallery', [App\Http\Controllers\WebsiteController::class, 'gallery'])->name('website.gallery');
Route::get('/page/{slug}', [App\Http\Controllers\WebsiteController::class, 'page'])->name('website.page');


Route::get('lang/{lang}',[App\Http\Controllers\WebsiteController::class, 'lang'])->name('lang');

Route::get('sitemap', function () {
    $sitemap = Sitemap::create()
    ->add(Url::create('/about'))
    ->add(Url::create('/contact'))
    ->add(Url::create('/privacy'))
    ->add(Url::create('/terms-of-condition'))
    ->add(Url::create('/gallery'))
    ->add(Url::create('/project'))
    ->add(Url::create('/services'))
    ->add(Url::create('/category'))
    ->add(Url::create('/tag'))
    ->add(Url::create('/portfolio'))
    ->add(Url::create('/blog'));
    
   
    $posts = Post::all();
    $pages = Page::all();
    $services = Service::all();
    $tag = Tag::all();
    $categories = Category::all();

    foreach ($posts as $post) {
        $sitemap->add(Url::create("/{$post->slug}"));
    }
    foreach ($pages as $page) {
        $sitemap->add(Url::create("/page/{$page->slug}"));
    }
    foreach ($services as $s) {
        $sitemap->add(Url::create("/page/{$s->slug}"));
    }
    foreach ($tag as $t) {
        $sitemap->add(Url::create("/tag/{$t->slug}"));
    }
    foreach ($categories as $c) {
        $sitemap->add(Url::create("/category/{$c->slug}"));
    }
    $sitemap->writeToFile(public_path('sitemap.xml'));
    return 'Sitemap Created';
   
});

Route::get('/{slug}', [App\Http\Controllers\WebsiteController::class, 'post'])->name('website.post');







