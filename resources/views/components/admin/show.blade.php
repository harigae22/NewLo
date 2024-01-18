
    @props([
        'event' => [],
        'ages' => [],
        'prefectures' => [],
        'categories' => [],
        'like' => [],
    ])

    <section class="max-w-screen-2xl mx-auto">
        <div class="flex justify-end items-center">
            <x-element.admin_details :event="$event"></x-element.admin_details>
        </div>
        <div class="flex flex-wrap justify-between mb-8 md:mb-16">
            <div class="w-full lg:p-5 lg:w-2/4 flex flex-col justify-center lg:pt-48 lg:pb-24 mb-6 sm:mb-12 lg:mb-0">

                <div class="flex justify-end items-center">
                    <img class="mr-2 h-8 w-8 object-cover rounded-full" src="{{ $event->user->profile_photo_url }}" alt="{{ $event->user->name }}">
                    <span class="text-gray-500">{{$event->user->name}}</span>
                </div>
                <p class="max-w text-right text-gray-500 xl:text-lg leading-relaxed">費用 : ¥ {{number_format($event->cost)}}</p>
                <p class="max-w text-right mb-8 text-gray-500 xl:text-lg leading-relaxed">#{{$event->prefecture->name}} / #{{$event->age->name}} / #{{$event->category->name}}</p>
                <div class="flex justify-end mb-8">
                    <form action="{{route('newlo.event_show.like')}}" method="post">
                        @csrf
                        <input type="hidden" name="event_id" value="{{$event->id}}">

                        <x-element.button_like :event="$event" :like="$like"></x-element.button_like>
                    </form>
                </div>
                <h1 class="text-black-800 text-3xl sm:text-3xl md:text-4xl font-bold mb-4 md:mb-8 break-words">{{ $event->title }}</h1>
                <p class="max-w text-gray-500 xl:text-lg leading-relaxed mb-20 break-words">{{ $event->content }}</p>

                <div class="flex justify-end">
                    <p class="max-w text-gray-500 xl:text-lg leading-relaxed mb-20 break-words">
                        @if(isset( $event->day )) 撮影日 : {{ $event->day }}
                        @else 撮影日 : none
                        @endif
                    </p>
                </div>
            </div>

            <x-event.show_image :images="$event->images"/> 

            <x-event.show_images :images="$event->images"/>

        </div>
    </section>

