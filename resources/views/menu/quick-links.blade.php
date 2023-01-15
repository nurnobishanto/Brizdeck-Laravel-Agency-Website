<ul class="quick-links">
    @foreach ($items as $item)
    <li>
        <a  href="{{ url($item->link()) }}" target="{{ $item->target }}" > {{ $item->title }}</a>
    </li>
    @endforeach
</ul>