<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRecommendationAndSuggestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    protected $fillable = ['subject','date','person_name','person_mobile_no','person_email','hospital_id'];
    public function up()
    {
        Schema::create('recommendation_and_suggestions', function (Blueprint $table) {
            $table->id();
            $table->string('subject');
            $table->date('rec_date');
            $table->string('person_name');
            $table->string('person_mobile_no');
            $table->string('person_email');
            $table->unsignedBigInteger('hospital_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('recommendation_and_suggestions');
    }
}
