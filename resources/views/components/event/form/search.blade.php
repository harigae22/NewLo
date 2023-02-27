@props([
    'ages' => [],
    'prefectures' => [],
    'categories' => [],
])

<form action="{{ route('newlo.search') }}" method="get">
    @csrf

    <div class="mb-6">
        <label for="default-input" class="block mb-2 text-sm font-medium text-gray-900 " >キーワード検索</label>
        <input type="text" placeholder="キーワードを入力" name="search" value="{{ old('search') }}" class="block w-full px-4 py-3 text-base text-gray-500 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
    </div>

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
        <div class="mr-4">
            <label for="large" class="block mb-2 mt-2 text-base font-medium text-gray-500">都道府県 選択</label>
            <select name="prefecture_id" id="" class="block w-32 px-4 py-3 text-base text-gray-500 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
                @if(old('prefecture_id') == null) 
                    <option value="" selected>全て</option> 
                    @foreach ( $prefectures as $pre)
                        <option value="{{ $pre->id }}">{{ $pre->name }}</option>
                    @endforeach
                @else 
                    @foreach ( $prefectures as $pre)
                        @if(old('prefecture_id') == $pre->id)
                            <option value="{{ $pre->id }}" selected> {{ $pre->name  }} </option>
                            @foreach ( $prefectures as $pre)
                                <option value="{{ $pre->id }}">{{ $pre->name }}</option>
                            @endforeach
                        @endif
                    @endforeach
                @endif
            </select>
        </div>
        <div class="mr-4">
            <label for="large" class="block mb-2 mt-2 text-base font-medium text-gray-500">カテゴリー 選択</label>
            <select name="category_id" id="" class="block w-40 px-4 py-3 text-base text-gray-500 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
                @if(old('category_id') == null) 
                    <option value="" selected>全て</option> 
                    @foreach ( $categories as $cate)
                        <option value="{{ $cate->id }}">{{ $cate->name }}</option>
                    @endforeach
                @else 
                    @foreach ( $categories as $cate)
                        @if(old('category_id') == $cate->id)
                            <option value="{{ $cate->id }}" selected> {{ $cate->name  }} </option>
                            @foreach ( $categories as $cate)
                                <option value="{{ $cate->id }}">{{ $cate->name }}</option>
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

        <a href="{{ route('newlo.event_list') }}" class="inline-flex items-center px-4 py-2 shadow-lg bg-neutral-500 shadow-neutral-500/50 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-neutral-600 focus:bg-neutral-600 active:bg-neutral-600 focus:outline-none focus:ring-2 focus:ring-violet-500 focus:ring-offset-2 transition ease-in-out duration-150 hover:translate-y-0.5 transform transition">
            クリア
        </a>
    </div>
</form>
