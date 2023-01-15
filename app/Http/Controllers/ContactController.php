<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Models\Contact;
use App\Models\Comment;
use App\Models\Section;
use App\Models\Service;
use Mail;
use Session;

use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;
use Artesaos\SEOTools\Facades\JsonLdMulti;
use Artesaos\SEOTools\Facades\SEOTools;
use Stichoza\GoogleTranslate\GoogleTranslate;

class ContactController extends Controller
{
    //
    public function contact()
    {
        // Translate to Georgian
        $tr = new GoogleTranslate(); 
        $tr->setSource('en'); 
        if(Session::has('lang')) {$lang = Session::get('lang'); $tr->setTarget($lang); }else{$lang ='en' ;$tr->setTarget($lang); }   
        $contact_section = Section::where('slug','contact')->first();
        $services = Service::orderBy('created_at','DESC')->take(6)->get();
        SEOTools::setTitle('Contact');
        SEOTools::setDescription('Digital Marketing Agency');

        return view('website.contact',compact(['tr','contact_section','services']));
    }
    public function storeContactForm(Request $request)
    {
    
        $request->validate([
            'type' => 'required',
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|digits:11|numeric',
            'subject' => 'required',
            'message' => 'required',
        ]);

        $input = $request->all();
       Contact::create($input);
        //  Send mail to admin
        \Mail::send('contactMail', array(
            'type' => $input['type'],
            'name' => $input['name'],
            'email' => $input['email'],
            'phone' => $input['phone'],
            'subject' => $input['subject'],
            'message' => $input['message'],
        ), function($message) use ($request){
            $message->from($request->email);
            $message->to('support@brizdeck.com', 'Brixdeck')->subject($request->get('subject'));
        });

        return redirect()->back()->with(['success' => 'Contact Form Submit Successfully']);
    }

    public function storeComment(Request $request)
    {
        $input = $request->all();       
        Comment::create($input);      
        return redirect()->back()->with(['success' => 'Comment Submit Successfully']);
    }
}
