<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AgeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $params = [
            ['id' => 1, 'name' => '10才未満'],
            ['id' => 2, 'name' => '10～14才'],
            ['id' => 3, 'name' => '15～19才'],
            ['id' => 4, 'name' => '20～24才'],
            ['id' => 5, 'name' => '25～29才'],
            ['id' => 6, 'name' => '30～34才'],
            ['id' => 7, 'name' => '35～49才'],
            ['id' => 8, 'name' => '40～44才'],
            ['id' => 9, 'name' => '45～49才'],
            ['id' => 10, 'name' => '50～54才'],
            ['id' => 11, 'name' => '55～59才'],
            ['id' => 12, 'name' => '60～64才'],
            ['id' => 13, 'name' => '65～69才'],
            ['id' => 14, 'name' => '70～74才'],
            ['id' => 15, 'name' => '75～79才'],
            ['id' => 16, 'name' => '80～84才'],
            ['id' => 17, 'name' => '85才以上'],
        ];
        DB::table('ages')->insert($params);
    }
}

