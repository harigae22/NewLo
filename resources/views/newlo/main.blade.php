<x-layout title="TOP | NewLo">

    <x-slot name="header">
        <div class="relative mx-auto max-w-7xl py-6 pl-6 px-4 sm:px-6 lg:px-8 ">
            <h1 class="text-3xl font-bold tracking-tight text-gray-800 pl-8">NewLo</h1>
            <h2 class="text-1xl font-bold tracking-tight text-gray-600 pl-8">メインページ</h2>
        </div>
    </x-slot>

    <div class="fixed top-24 right-16 h-16 w-16 z-50">
        <a href="{{ route('tweet') }}" class="nline-flex items-center px-4 py-2 shadow-lg bg-violet-700 shadow-violet-700/50 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-violet-800 focus:bg-violet-800 active:bg-violet-800 focus:outline-none focus:ring-2 focus:ring-violet-500 focus:ring-offset-2 transition ease-in-out duration-150 hover:translate-y-0.5 transform transition">
            {{ __('+') }}
        </a>
    </div>

    <x-event.list.top1 :top1Event="$top1Event" :ages="$ages" :like="$like"></x-event.list.top1>
    <x-event.list.age_top9_list :ageEvents="$ageEvents" :ages="$ages" :like="$like"></x-event.list.age_top9_list>
    <x-event.list.top3_list :events="$events" :like="$like"></x-event.list.top3_list>
    <x-event.list.mytop3_list :myevents="$myevents" :like="$like"></x-event.list.mytop3_list>
    <x-event.list.day_list :dayEvents="$dayEvents" :like="$like"></x-event.list.day_list>
    
</x-layout>
