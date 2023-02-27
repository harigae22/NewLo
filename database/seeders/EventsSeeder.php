<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Event;
use App\Models\Image;

class EventsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Event::factory()->count(5)->create()->each(fn($event) => 
            Image::factory()->count(4)->create()->each(fn($image) =>
                $event->images()->attach($image->id)
            )
        );
    }
}
