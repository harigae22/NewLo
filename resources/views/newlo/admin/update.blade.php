<x-layout title="投稿詳細 | NewLo">

    <x-slot name="header">
        <div class="mx-auto max-w-7xl py-6 pl-6 px-4 sm:px-6 lg:px-8">
            <h1 class="text-3xl font-bold tracking-tight text-gray-800 pl-8">NewLo</h1>
            <h2 class="text-1xl font-bold tracking-tight text-gray-600 pl-8">管理者 投稿の編集</h2>
        </div>
    </x-slot>

    <div class="bg-white py-6 sm:py-8 lg:py-12">
        <div class="max-w-screen-2xl px-4 md:px-8 mx-auto">

            @php
                $breadcrumbs = [
                    ['href' => route('newlo.event_list'), 'label' => 'TOP'],
                    ['href' => '#', 'label' => '編集']
                ];
            @endphp

            <div>
                
                <x-element.breadcrumbs :breadcrumbs="$breadcrumbs"></x-element.breadcrumbs>

                <x-admin.put :event="$event" :ages="$ages" :prefectures="$prefectures" :categories="$categories"></x-admin.put>


            </div>
        </div>
    </div>
</x-layout>