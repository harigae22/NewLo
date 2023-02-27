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
        Schema::create('event', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->date('day')->nullable();
            $table->string('title');
            $table->string('content');
            $table->integer('cost')->nullable()->default(0);
            $table->unsignedBigInteger('age_id');
            $table->unsignedBigInteger('prefecture_id');
            $table->unsignedBigInteger('category_id');
            $table->timestamps();
            $table->integer('del_flg')->default(0);

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('event');
    }
};
