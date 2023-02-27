
@props([
    'ageEvents' => [],
    'ages' => [],
    'like' => []
])

    <div class="js-show-on-scroll max-w-7xl border-b-4 border-violet-500 pb-16">
        <div class="bg-white mx-auto max-w-7xl py-6 sm:px-6 lg:px-8   mt-16 rounded-lg">
        <form action="{{ route('newlo.main_search') }}" method="get">
        @csrf
            <div class="flex flex-Wrap justify-end pt-4">
                <div class="mr-4">
                    <label for="large" class="block mb-2 mt-2 text-base font-medium text-gray-500">世代 選択</label>
                    <select name="age_id" id="" class="block w-32 px-4 py-3 text-base text-gray-500 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
                        
                        @if(old('age_id') == null) 
                            <option value="" selected hidden>全て</option> 
                            @foreach ( $ages as $age)
                                <option value="{{ $age->id }}"> {{ $age->name  }} </option>
                            @endforeach
                        @else 
                            @foreach ( $ages as $age)
                                @if(old('age_id') == $age->id)
                                    <option value="{{ $age->id }}" selected > {{ $age->name  }} </option>
                                    @foreach ( $ages as $age)
                                        <option value="{{ $age->id }}"> {{ $age->name  }} </option>
                                    @endforeach
                                @endif
                            @endforeach
                        @endif
                    </select>
                </div>
            </div>

            <div class="flex flex-Wrap justify-end pt-4">
                <x-button class="mr-4">
                    {{ __('検索') }}
                </x-button>

                <a href="{{ route('newlo.main') }}" class="inline-flex items-center px-4 py-2 shadow-lg bg-neutral-500 shadow-neutral-500/50 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-neutral-600 focus:bg-neutral-600 active:bg-neutral-600 focus:outline-none focus:ring-2 focus:ring-violet-500 focus:ring-offset-2 transition ease-in-out duration-150 hover:translate-y-0.5 transform transition">
                    クリア
                </a>
            </div>
        </form>


        <h2 class="text-left text-gray-800 text-2xl lg:text-3xl font-bold mb-4 md:mb-6">
            @if(old('age_id') == null) 
                全世代
            @else 
                @foreach ( $ages as $age)
                    @if(old('age_id') == $age->id)
                    {{ $age->name  }}
                    @endif
                @endforeach
            @endif
            Top9</h2>
        <p class="text-gray-500 md:text-lg">NewLo 世代別 ランキング</p>

        <div class="grid sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-3 gap-x-4 md:gap-x-6 gap-y-6">
            @foreach ( $ageEvents as $ageEvent)
                <div>
                    <div class="ioverflow-hidden  aspect-video cursor-ponter rounded-xl relative group">
                        <a href="{{route('newlo.event_show',['eventId' => $ageEvent->id])}}" class="object-cover w-full aspect-square group-hover:scale-110 transition duration-300 ease-in-out h-60 group h-50 block bg-gray-100 rounded-lg overflow-hidden shadow-lg mb-2 lg:mb-3">
                            <x-event.list_image :images="$ageEvent->images"/>
                        </a>
                    </div>
                    
                    <div class="flex flex-col">
                        <div class="flex justify-between">
                            <div class="flex items-center">
                                <img class="mr-2 h-8 w-8 object-cover rounded-full" src="{{ $ageEvent->user->profile_photo_url }}" alt="{{ $ageEvent->user->name }}">
                                <span class="text-gray-500">{{$ageEvent->user->name}}</span>
                            </div>
                            <form action="{{route('newlo.like.main_list')}}" method="post">
                                @csrf
                                <input type="hidden" name="event_id" value="{{$ageEvent->id}}">
                                <x-element.button_like :event="$ageEvent" :like="$like"></x-element.button_like>
                            </form>
                            <x-element.details :event='$ageEvent'></x-element.details>
                        </div>
                        <span class="text-gray-800 text-lg lg:text-xl font-bold transition duration-100">{{$ageEvent->title}}</span>
                        <span class="text-gray-500">{{$ageEvent->prefecture->name}} / {{$ageEvent->age->name}} / {{$ageEvent->category->name}}</span>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>

