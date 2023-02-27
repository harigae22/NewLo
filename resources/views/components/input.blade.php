@props(['disabled' => false])

<input {{ $disabled ? 'disabled' : '' }} {!! $attributes->merge(['class' => 'border-gray-300 focus:border-violet-700 focus:ring-violet-800 rounded-md shadow-sm']) !!}>
