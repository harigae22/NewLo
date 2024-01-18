
@props([
    'images' => []
    ])

    @foreach($images as $key => $image)
        <div class="w-full lg:p-5 mb-10 lg:w-1/3 flex justify-center ">
            <div class="bg-gray-100 rounded-lg shadow-lg overflow-hidden ">
                <img src="{{ asset('storage/images/' . $image->name )}}" class="w-full h-full object-cover object-center">
            </div>
        </div>
    @endforeach

