<button {{ $attributes->
    merge(['type' => 'submit', 'class' => 'inline-flex items-center px-4 py-2 shadow-lg bg-violet-700 shadow-violet-700/50 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-violet-800 focus:bg-violet-800 active:bg-violet-800 focus:outline-none focus:ring-2 focus:ring-violet-500 focus:ring-offset-2 transition ease-in-out duration-150 hover:translate-y-0.5 transform transition']) }}>
    {{ $slot }}
</button>
