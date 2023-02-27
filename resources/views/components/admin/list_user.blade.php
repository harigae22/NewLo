
@props([
    'users' => [],
])
    
    <div class="bg-white py-8 rounded-md shadow-lg">
        <div class="mx-auto grid max-w-7xl gap-y-20 gap-x-8 px-6 lg:px-8 xl:grid-cols-3">
            <div class="max-w-2xl">
                <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">登録者一覧</h2>
                <p class="mt-6 text-lg leading-8 text-gray-600">アイコンクリックで詳細と投稿イベント一覧</p>
            </div>
            <ul role="list" class="grid gap-x-8 gap-y-12 sm:grid-cols-2 sm:gap-y-16 xl:col-span-2">
                @foreach ( $users as $user)
                    <li class="border-b last:border-b-0 border-gray-200 p-4">
                        <div class="flex items-center gap-x-6">
                            <a href="{{route('admin.user.show', ['userId' => $user->id])}}">
                                <img class="h-16 w-16 object-cover rounded-full" src="{{ $user->profile_photo_url }}" alt="{{ $user->name }}">
                            </a>
                            <div>
                                <h3 class="text-base font-semibold leading-7 tracking-tight text-gray-900">{{ $user->id }}.{{ $user->name }}</h3>
                                <p class="text-sm font-semibold leading-6 text-violet-400">登録日 / {{ $user->created_at }}</p>
                            </div>
                        </div>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>

    {{ $users->links() }}
