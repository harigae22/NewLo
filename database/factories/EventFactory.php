<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Event>
 */
class EventFactory extends Factory
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
            'user_id' => 5,
            'day' => $this->faker->date('Y_m_d'),
            'title' => $this->faker->realText(10),
            'content' => $this->faker->realText(100),
            'cost' => $this->faker->randomNumber(5),
            'age_id' => $this->faker->numberBetween(2,17),
            'prefecture_id' => $this->faker->numberBetween(1,47),
            'category_id' => $this->faker->numberBetween(1,4),
            'del_flg'=> 0,
        ];
    }
}
