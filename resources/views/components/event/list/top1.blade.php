
@props([
    'top1Event' => [],
    'like' => []
])
<div class="flex justify-center">
    <a href="{{route('newlo.event_show',['eventId' => $top1Event->id])}}" class="object-cover w-3/4 h-96 aspect-square group-hover:scale-110 transition duration-300 ease-in-out  group block bg-gray-100 rounded-lg overflow-hidden shadow-lg mb-2 lg:mb-3">
        <x-event.list_image :images="$top1Event->images"/>
    </a>
</div>