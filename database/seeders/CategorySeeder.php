<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $params = [
            ['id' => 1, 'name' => 'グルメ'],
            ['id' => 2, 'name' => 'ホテル'],
            ['id' => 3, 'name' => 'ショッピング'],
            ['id' => 4, 'name' => 'レジャー'],
            ['id' => 5, 'name' => 'その他'],
        ];
        DB::table('categories')->insert($params);
    }
}
