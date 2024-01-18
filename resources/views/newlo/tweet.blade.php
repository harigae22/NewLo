<x-layout title="投稿フォーム | NewLo">

<x-slot name="header">
        <div class="mx-auto max-w-7xl py-6 pl-6 px-4 sm:px-6 lg:px-8">
            <h1 class="text-3xl font-bold tracking-tight text-gray-800 pl-8">NewLo</h1>
            <h2 class="text-1xl font-bold tracking-tight text-gray-600 pl-8">投稿フォーム</h2>
        </div>
    </x-slot>
    
    <div class="bg-white py-6 sm:py-8 lg:py-12">
        <div class="max-w-screen-sm px-4 md:px-30 mx-auto">
            <div>
                @php
                    $breadcrumbs = [
                        ['href' => route('newlo.main'), 'label' => 'TOP'],
                        ['href' => '#', 'label' => '投稿']
                    ];
                @endphp
                
                <x-element.breadcrumbs :breadcrumbs="$breadcrumbs"></x-element.breadcrumbs>
                <x-event.form.post :ages="$ages" :prefectures="$prefectures" :categories="$categories"></x-event.form.post>
            </div>
        </div>
    </div>
</x-layout>

