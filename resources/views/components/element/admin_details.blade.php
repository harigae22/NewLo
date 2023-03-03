@props([
    'event' => []
])

<details class="event-option relative text-gray-500">
    <summary>
        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
            <path d="M10 6a2 2 0 110-4 2 2 0 010 4zM10 12a2 2 0 110-4 2 2 0 010 4zM10 18a2 2 0 110-4 2 2 0 010 4z" />
        </svg>
    </summary>

    <div class="bg-white rounded shadow-md absolute right-0 w-24 z-20 pt-1 pb-1">
        <div>
            <a href=" {{route('admin.update.index', ['eventId' => $event->id])}} " class="flex items-center pt-1 pb-1 pl-3 pr-3 hover:bg-gray-100">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                    <path d="M17.414 2.586a2 2 0 00-2.828 0L7 10.172V13h2.828l7.586-7.586a2 2 0 000-2.828z" />
                    <path fill-rule="evenodd" d="M2 6a2 2 0 012-2h4a1 1 0 010 2H4v10h10v-4a1 1 0 112 0v4a2 2 0 01-2 2H4a2 2 0 01-2-2V6z" clip-rule="evenodd" />
                </svg>
                <span>編集</span>
            </a>
        </div>
        
        <div>
            <form action=" {{route('admin.delete', ['eventId' => $event->id])}} " method="post" onclick="return confirm('投稿を再表示してもよろしいですか?');">
                @method('DELETE')
                @csrf
                <button type="submit" class="flex items-center w-full pt-1 pb-1 pl-3 pr-3 hover:bg-gray-100">
                    <svg height="21" viewBox="0 0 21 21" width="21" xmlns="http://www.w3.org/2000/svg" class="text-gray-600">
                        <g fill="none" fill-rule="evenodd" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" transform="translate(2 2)">
                            <path d="m12.5 1.5c2.4138473 1.37729434 4 4.02194088 4 7 0 4.418278-3.581722 8-8 8s-8-3.581722-8-8 3.581722-8 8-8"/>
                            <path d="m12.5 5.5v-4h4"/>
                        </g>
                    </svg>
                    <span>再表示</span>
                </button>
            </form>
        </div>
    </div>
</details>
