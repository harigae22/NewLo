
@props([
    'ages' => [],
    'prefectures' => [],
    'categories' => []
])


<form action="{{ route('newlo.tweet') }}" method="post" enctype="multipart/form-data">
    @csrf
    
    <div class="mb-4 flex justify-end items-center">
        <label for="large" class="block text-base font-medium text-gray-700 pr-4">イベント日時</label>
        <input type="date" name="day" value="{{ old('day') }}" class="block text-base text-gray-700 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
    </div>

    <x-event.form.images></x-event.form.images>

        @error('title')
            <x-alert.error>{{ $message }}</x-alert.error>
        @enderror
    
    <div class="mb-4">
        <label for="default-input" class="block mb-2 text-sm font-medium text-gray-700" >タイトル</label>
        <input name="title" value="{{ old('title') }}" placeholder="タイトルを入力" type="text" id="default-input" class="px-4 py-3 text-gray-700 bg-gray-50 border border-gray-500  text-sm rounded-lg focus:ring-violet-700 focus:border-violet-700 block w-full p-2.5">
    </div>

        @error('content')
            <x-alert.error>{{ $message }}</x-alert.error>
        @enderror

    <div class="mt-4">
        <label for="default-input" class="block mb-2 text-sm font-medium text-gray-700">イベント内容 : 140字まで</label>
        <textarea name="content" rows="3" placeholder="投稿内容を入力" class="px-4 py-3 mt-1 text-gray-700 block w-full sm:text-sm border border-gray-500 rounded-md bg-gray-50 focus:ring-violet-700 focus:border-violet-700">{{ old('content') }}</textarea>
    </div>

    <div class="mt-6 pr-3 flex items-center justify-end">
        <label for="default-input" class="block text-sm font-medium text-gray-700" >かかった費用 : ¥</label>
        <input name="cost" value="{{ old('cost') }}" placeholder="100000" type="text" id="default-input" class="px-4 py-2 ml-2 w-32 text-gray-700 bg-gray-50 border border-gray-500  text-sm rounded-lg focus:ring-violet-700 focus:border-violet-700 block p-2.5">
    </div>
    

    <div>
        @error('age_id')
            <x-alert.error>{{ $message }}</x-alert.error>
        @enderror
        <label for="large" class="block mb-2 mt-2 text-base font-medium text-gray-700">世代 選択</label>
        <select name="age_id" id="" class="block w-full px-4 py-3 text-base text-gray-700 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
            <option value="{{ old('age_id') }}" selected hidden>選択してください</option>
            @foreach ( $ages as $age)
                <option value="{{ $age->id }}" 
                    @if( old('age_id') == $age->id) selected 
                    @endif>
                    {{ $age->name }}
                </option>
            @endforeach
        </select>

        @error('prefecture_id')
        <x-alert.error>{{ $message }}</x-alert.error>
        @enderror
        <label for="large" class="block mb-2 mt-2 text-base font-medium text-gray-700">都道府県 選択</label>
        <select name="prefecture_id" id="" class="block w-full px-4 py-3 text-base text-gray-700 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
            <option value="{{ old('prefecture_id') }}" selected hidden>選択してください</option>
            @foreach ( $prefectures as $pre)
                <option value="{{ $pre->id }}" 
                    @if( old('prefecture_id') == $pre->id) selected 
                    @endif>
                    {{ $pre->name }}
                </option>
            @endforeach
        </select>

        @error('category_id')
        <x-alert.error>{{ $message }}</x-alert.error>
        @enderror
        <label for="large" class="block mb-2 mt-2 text-base font-medium text-gray-700">カテゴリー 選択</label>
        <select name="category_id" id="" class="block w-full px-4 py-3 mb-2 text-base text-gray-700 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
            <option value="{{ old('category_id') }}" selected hidden>選択してください</option>
            @foreach ($categories as $cate)
                <option value="{{ $cate->id }}" 
                    @if( old('category_id') == $cate->id) selected 
                    @endif>
                    {{ $cate->name }}
                </option>
            @endforeach
        </select>

    </div>
   

    @if (session('feedback.success'))
        <p style="color: aquamarine;">{{ session('feedback.success') }}</p>
    @endif

    @error('titel')
        <x-alert.error>{{ $message }}</x-alert.error>
    @enderror

    <div class="flex flex-Wrap justify-end">
        <x-button class="mr-4">
            {{ __('投稿') }}
        </x-button>
    </div>
</form>

