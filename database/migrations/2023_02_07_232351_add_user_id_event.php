<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('event', function (Blueprint $table) {
            // usersテーブルのidと紐付け
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('age_id')->references('id')->on('ages');
            $table->foreign('prefecture_id')->references('id')->on('prefectures');
            $table->foreign('category_id')->references('id')->on('categories');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('event', function (Blueprint $table) {
            $table->dropForeign('event_user_id_foreign');
            $table->dropColumn('user_id');
        });
    }
};
