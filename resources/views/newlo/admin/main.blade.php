<x-layout title="TOP | NewLo">

    <x-slot name="header">
        <div class="mx-auto max-w-7xl py-6 pl-6 px-4 sm:px-6 lg:px-8">
            <h1 class="text-3xl font-bold tracking-tight text-gray-800 pl-8">NewLo</h1>
            <h2 class="text-1xl font-bold tracking-tight text-gray-600 pl-8">管理者画面</h2>
        </div>
    </x-slot>

    <div class="bg-white py-6 sm:py-8 lg:py-12">
        <div class="max-w-screen-2xl px-4 md:px-8 mx-auto">
            <div>

                <div class="mb-10 md:mb-16 text-right">
                    <p class="max-w-screen-md text-gray-500 md:text-lg text-center mx-auto">全ユーザー<br>削除済みイベント一覧</p>
                </div>

                <x-admin.list_event :events="$events" :ages="$ages" :prefectures="$prefectures" :categories="$categories" :like="$like"></x-admin.list_event>

            </div>
        </div>
    </div>
</x-layout>