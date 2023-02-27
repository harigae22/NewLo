
<x-layout title="NewLo">

  <x-slot name="header">
      <div class="mx-auto max-w-7xl py-6 pl-6 px-4 sm:px-6 lg:px-8">
        <h1 class="text-3xl font-bold tracking-tight text-gray-800 pl-8">NewLo</h1>
        <h2 class="text-1xl font-bold tracking-tight text-gray-600 pl-8">TOPページ</h2>
      </div>
  </x-slot>

  <section class="overflow-hidden text-neutral-700 relative">
    
    <div class="flex shadow-[0_4px_9px_-4px_#3b71ca] justify-center space-x-2 absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 text-black z-40">
      <div class="bg-gray-100 rounded-lg flex flex-col justify-center sm:p-4">
        <div class="px-32 py-8 xs:p-0 mx-auto bg-white md:w-full md:max-w-md">
            <div class="flex justify-center">
              <img src="{{ asset('images/newlo_logo.png') }}" class="h-24">
            </div>

            <h1 class="font-bold text-center text-2xl mb-5">NewLo</h1> 
            <h2 class="font-bold text-center text-gray-500 mb-2">旅行のイベントを<br>みんなで共有しよう!</h2>
            
            <div class="flex justify-center space-x-2 ">
              <a href="{{ route('login') }}" class="cursor-pointer inline-flex items-center px-4 py-2 shadow-lg bg-violet-700 shadow-violet-700/50 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-violet-800 focus:bg-violet-800 active:bg-violet-800 focus:outline-none focus:ring-2 focus:ring-violet-500 focus:ring-offset-2 transition ease-in-out duration-150 hover:translate-y-0.5 transform transition']">
                ログイン
              </a>
              <a href="{{ route('register') }}" class="cursor-pointer inline-flex items-center px-4 py-2 shadow-lg bg-violet-700 shadow-violet-700/50 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-violet-800 focus:bg-violet-800 active:bg-violet-800 focus:outline-none focus:ring-2 focus:ring-violet-500 focus:ring-offset-2 transition ease-in-out duration-150 hover:translate-y-0.5 transform transition']">
                新規登録
              </a>
            </div>
        </div>
      </div>
    </div>

    <div class="container mx-auto px-5 py-2 opacity-70 z-0">
      <div class="-m-1 flex flex-wrap md:-m-2">
        <div class="flex w-1/2 flex-wrap">
          <div class="w-1/2 p-1 md:p-2">
            <img
              alt="gallery"
              class="block h-full w-full rounded-lg object-cover object-center"
              src="{{ asset('images/sample1.jpg') }}" />
          </div>
          <div class="w-1/2 p-1 md:p-2">
            <img
              alt="gallery"
              class="block h-full w-full rounded-lg object-cover object-center"
              src="{{ asset('images/sample2.jpg') }}" />
          </div>
          <div class="w-full p-1 md:p-2">
            <img
              alt="gallery"
              class="block h-full w-full rounded-lg object-cover object-center"
              src="{{ asset('images/sample3.jpg') }}" />
          </div>
        </div>
        <div class="flex w-1/2 flex-wrap">
          <div class="w-full p-1 md:p-2">
            <img
              alt="gallery"
              class="block h-full w-full rounded-lg object-cover object-center"
              src="{{ asset('images/sample4.jpg') }}" />
          </div>
          <div class="w-1/2 p-1 md:p-2">
            <img
              alt="gallery"
              class="block h-full w-full rounded-lg object-cover object-center"
              src="{{ asset('images/sample5.jpg') }}" />
          </div>
          <div class="w-1/2 p-1 md:p-2">
            <img
              alt="gallery"
              class="block h-full w-full rounded-lg object-cover object-center"
              src="{{ asset('images/sample6.jpg') }}" />
          </div>
          <div class="w-1/2 p-1 md:p-2">
            <img
              alt="gallery"
              class="block h-full w-full rounded-lg object-cover object-center"
              src="{{ asset('images/sample7.jpg') }}" />
          </div>
          <div class="w-1/2 p-1 md:p-2">
            <img
              alt="gallery"
              class="block h-full w-full rounded-lg object-cover object-center"
              src="{{ asset('images/sample8.jpg') }}" />
          </div>
        </div>
      </div>
    </div>
  </section>

</x-layout>
