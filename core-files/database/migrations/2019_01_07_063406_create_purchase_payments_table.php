<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePurchasePaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('purchase_payments', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('purchase_order_id')->unsigned();
            $table->integer('payment_type_id')->unsigned();
            $table->double('amount')->default(0);
            $table->date('payment_date');
            $table->string('attachment')->nullable();
            $table->integer('company_id')->unsigned()->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->foreign('purchase_order_id')->references('id')->on('purchase_orders')->onDelete('cascade');
            $table->foreign('payment_type_id')->references('id')->on('payment_types')->onDelete('cascade');
            $table->foreign('company_id')->references('id')->on('companies');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('purchase_payments');
    }
}
