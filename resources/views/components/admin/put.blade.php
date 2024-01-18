
@props([
    'event' => [],
    'ages' => [],
    'prefectures' => [],
    'categories' => []
])


<form action="{{ route('admin.update.put', ['eventId' => $event->id]) }}" method="post">
    @method('PUT')
    @csrf
    @if (session('feedback.success'))
        <x-alert.success>{{ session('feedback.success') }}</x-alert.success>
    @endif

    <div class="flex flex-Wrap justify-end pt-4">
        <x-button class="mr-4" onclick="return confirm('既存の投稿修正します。よろしいですか?');">
            {{ __('編集') }}
        </x-button>
    </div>

    <section class="max-w-screen-2xl mx-auto">
        
        <div class="flex flex-wrap justify-between mb-8 md:mb-16">
            <div class="w-full lg:p-5 lg:w-2/4 flex flex-col justify-center mb-6 sm:mb-12 lg:mb-0">

                <div class="mb-4 flex justify-end items-center">
                    <label for="large" class="block text-base font-medium text-gray-700 pr-4">イベント日時</label>
                    <input type="date" name="day" value="{{ $event->day }}" class="block text-base text-gray-700 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
                </div>

                @error('cost')
                    <x-alert.error>{{ $message }}</x-alert.error>
                @enderror
                <div class="mb-4 flex justify-end items-center">
                    <label for="large" class="block text-base font-medium text-gray-700 pr-4">費用 ¥</label>
                    <input type="test" name="cost" value="{{ $event->cost }}" class="block w-32 px-2 py-1 text-base text-gray-700 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
                </div>

                <div class="mb-4 flex justify-end items-center">
                    <label for="default-input" class="block ml-2 pr-4 text-sm font-medium text-gray-700" >都道府県</label>
                        <select name="prefecture_id" id="" class="block w-32 text-base text-gray-700 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
                            @foreach ( $prefectures as $pre)
                                @if($pre->id === $event->prefecture->id)
                                    <option value="{{ $pre->id }}" selected>{{ $pre->name }}</option>
                                @else
                                    <option value="{{ $pre->id }}">{{ $pre->name }}</option>
                                @endif
                            @endforeach
                        </select>
                </div>
                <div class="mb-4 flex justify-end items-center">
                    <label for="default-input" class="block ml-2 pr-4 text-sm font-medium text-gray-700" >年齢</label>
                        <select name="age_id" id="" class="block w-32 text-base text-gray-700 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
                            @foreach ( $ages as $age)
                                @if($age->id === $event->age->id)
                                    <option value="{{ $age->id }}" selected>{{ $age->name }}</option>
                                @else
                                    <option value="{{ $age->id }}">{{ $age->name }}</option>
                                @endif
                            @endforeach
                        </select> 
                </div>
                <div class="mb-4 flex justify-end items-center">
                    <label for="default-input" class="block ml-2 pr-4 text-sm font-medium text-gray-700" >カテゴリー</label>
                        <select name="category_id" id="" class="block w-40 text-base text-gray-700 border border-gray-500 rounded-lg bg-gray-50 focus:ring-violet-700 focus:border-violet-700">
                            @foreach ( $categories as $cate)
                                @if($cate->id === $event->category->id)
                                    <option value="{{ $cate->id }}" selected>{{ $cate->name }}</option>
                                @else
                                    <option value="{{ $cate->id }}">{{ $cate->name }}</option>
                                @endif
                            @endforeach
                        </select>
                </div>
                
                
                @error('title')
                    <x-alert.error>{{ $message }}</x-alert.error>
                @enderror
                <div class="mb-4">
                    <label for="default-input" class="block ml-2 mb-2 text-sm font-medium text-gray-700" >タイトル</label>
                    <input name="title" type="text" id="default-input" value="{{ $event->title }}" class="px-4 py-3 text-gray-700 bg-gray-50 border border-gray-500  text-sm rounded-lg focus:ring-violet-700 focus:border-violet-700 block w-full p-2.5">
                </div>


                @error('content')
                    <x-alert.error>{{ $message }}</x-alert.error>
                @enderror
                <div class="pt-4">
                <label for="default-input" class="block ml-2 mb-2 text-sm font-medium text-gray-700" >内容 : <span class="text-red-400">*140文字まで<span></label>
                    <textarea name="content" rows="3" class="px-4 py-3 mt-1 text-gray-700 block w-full sm:text-sm border border-gray-500 rounded-md bg-gray-50 focus:ring-violet-700 focus:border-violet-700" placeholder="投稿内容を入力">{{ $event->content }}</textarea>
                </div>
            </div>

            <x-event.show_image :images="$event->images"/> 

            <x-event.show_images :images="$event->images"/>

        </div>
    </section>

    </form>

