<!DOCTYPE html>
<html>
<head>
   
    {!! SEOMeta::generate() !!}
    {!! OpenGraph::generate() !!}
    {!! Twitter::generate() !!}
    {!! JsonLd::generate() !!}
    {!! JsonLdMulti::generate() !!}
    {!! SEO::generate() !!}
    {!! SEO::generate(true) !!}
    {!! app('seotools')->generate() !!}
</head>
<body>
<div class="container">
    <div class="text-center">
        <h4>Laravel 7 Artesaos SEOTools Tutorial</h4>
    </div>
</div>
</body>
</html>