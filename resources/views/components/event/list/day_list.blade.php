
@props([
    'dayEvents' => [],
    'like' => []
])

<div class="js-show-on-scroll max-w-7xl pb-16">
    <div class="bg-white mx-auto max-w-7xl py-6 sm:px-6 lg:px-8 lg:mr-40  mt-16 rounded-lg">

        <h2 class="text-left text-gray-800 text-2xl lg:text-3xl font-bold mb-4 md:mb-6">NewLo 最新順</h2>
        <p class="text-gray-500 md:text-lg">NewLo 最新投稿</p>

        <div class="grid sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-3 gap-x-4 md:gap-x-6 gap-y-6">
            @foreach ( $dayEvents as $dayEvent)
                <div>
                    <div class="ioverflow-hidden  aspect-video cursor-ponter rounded-xl relative group">
                        <a href="{{route('newlo.event_show',['eventId' => $dayEvent->id])}}" class="object-cover w-full aspect-square group-hover:scale-110 transition duration-300 ease-in-out h-60 group h-50 block bg-gray-100 rounded-lg overflow-hidden shadow-lg mb-2 lg:mb-3">
                            <x-event.list_image :images="$dayEvent->images"/>
                        </a>
                    </div>
                    
                    <div class="flex flex-col">
                        <div class="flex justify-between">
                            <div class="flex items-center">
                                <img class="mr-2 h-8 w-8 object-cover rounded-full" src="{{ $dayEvent->user->profile_photo_url }}" alt="{{ $dayEvent->user->name }}">
                                <span class="text-gray-500">{{$dayEvent->user->name}}</span>
                            </div>
                            <form action="{{route('newlo.like.main_list')}}" method="post">
                                @csrf
                                <input type="hidden" name="event_id" value="{{$dayEvent->id}}">
                                <x-element.button_like :event="$dayEvent" :like="$like"></x-element.button_like>
                            </form>
                            <x-element.details :event='$dayEvent'></x-element.details>
                        </div>
                        <span class="text-gray-800 text-lg lg:text-xl font-bold transition duration-100">{{$dayEvent->title}}</span>
                        <span class="text-gray-500">{{$dayEvent->prefecture->name}} / {{$dayEvent->age->name}} / {{$dayEvent->category->name}}</span>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>

