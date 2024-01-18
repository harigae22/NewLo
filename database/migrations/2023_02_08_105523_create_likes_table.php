<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
class CreatelikesTable extends Migration
{
/**
* Run the migrations.
*
* @return void
*/
public function up()
{
    Schema::create('likes', function (Blueprint $table) {
    $table->increments('id');
    $table->bigInteger('user_id')->unsigned()->index();
    $table->bigInteger('event_id')->unsigned()->index();
    $table->timestamps();
    $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
    $table->foreign('event_id')->references('id')->on('event')->onDelete('cascade');
    $table->unique(['user_id','event_id']);
    });
}
/**
* Reverse the migrations.
*
* @return void
*/
public function down()
{
    Schema::dropIfExists('likes');
}
}