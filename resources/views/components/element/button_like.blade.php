
@props([
    'event' => [],
    'like' => [],
])

@can('admin-higher')
    <p class="favorite-mark">
        <div class="flex gap-2.5">
            <span class="flex inline-block ring-indigo-300 text-red-400 text-sm md:text-base font-semibold text-center rounded-lg outline-none transition duration-100 px-4 py-2">
                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="rgb(251 113 133)" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                </svg>
                <span class="inline-block rounded-full text-gray-600 px-2 py-1 text-xs">
                    {{$event->likes_count}}
                </span>
            </span>
        </div>
    </p>
@endcan
@can('user-higher')
    @if(\Illuminate\Support\Facades\Auth::id() === $event->user_id)

        <p class="favorite-mark">
            <div class="flex gap-2.5">
                <span class="flex inline-block ring-indigo-300 text-red-400 text-sm md:text-base font-semibold text-center rounded-lg outline-none transition duration-100 px-4 py-2">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="rgb(251 113 133)" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                    </svg>
                    <span class="inline-block rounded-full text-gray-600 px-2 py-1 text-xs">
                        {{$event->likes_count}}
                    </span>
                </span>
            </div>
        </p>

    @else

        @if($like->where('user_id', Auth::id())->where('event_id',$event->id)->exists())
            <p class="favorite-marke">
                <div class="flex gap-2.5">
                    <button type="submit" class="flex inline-block bg-gray-200 hover:bg-gray-300 focus-visible:ring ring-indigo-300 text-red-400 active:text-gray-500 text-sm md:text-base font-semibold text-center rounded-lg outline-none transition duration-100 px-4 py-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="rgb(251 113 133)" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                        </svg>
                        <span class="inline-block rounded-full text-gray-600  px-2 py-1 text-xs">
                            {{$event->likes_count}}
                        </span>
                    </button>
                </div>
            </p>
            
        @else
            <p class="favorite-mark">
                <div class="flex gap-2.5">
                    <button type="submit" class="flex inline-block bg-gray-200 hover:bg-gray-300 focus-visible:ring ring-indigo-300 text-red-400 active:text-gray-500 text-sm md:text-base font-semibold text-center rounded-lg outline-none transition duration-100 px-4 py-2 mb-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                        </svg>
                        <span class="inline-block rounded-full text-gray-600 px-2 py-1 text-xs">
                            {{$event->likes_count}}
                        </span>
                    </button>
                </div>
            </p>
        @endif

    @endif
@endcan