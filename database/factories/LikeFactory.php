<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Like>
 */
class LikeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        //ダミーeventの投稿の作成
        return [
            'user_id' => $this->faker->numberBetween(3,11),
            'event_id' => $this->faker->numberBetween(33),
        ];
    }
}
