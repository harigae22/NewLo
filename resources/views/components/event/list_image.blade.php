
@props([
    'images' => []
    ])

    @foreach($images as $key => $image)
        <img src="{{ asset('storage/images/' . $image->name )}}" class="w-full h-full object-cover object-center">
        @if ($key == 0)
            @break
        @endif
    @endforeach
