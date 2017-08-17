<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateParsedDatasTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('parsed_datas', function(Blueprint $table)
		{
			$table->increments('id');
			$table->unsignedInteger('parent_id');
			$table->string('IAN_FULL_NAME')->nullable();
			$table->string('FIN_TYPE')->nullable();
			$table->string('IM_NUMIDENT')->nullable();
			$table->string('IAN_RO_SERIA')->nullable();
			$table->string('IAN_RO_CODE')->nullable();
			$table->string('IAN_RO_DT')->nullable();
			$table->string('DIC_NAME')->nullable();
			$table->string('F_ADR',1000)->nullable();
			$table->string('IA_PHONE_CODE')->nullable();
			$table->string('IA_PHONE')->nullable();
			$table->string('IA_EMAIL')->nullable();
			$table->string('IND_OBL')->nullable();
			$table->string('K_NAME')->nullable();
			$table->string('IM_IH')->nullable();
			$table->string('LICENSES')->nullable();
			$table->string('FILIALS')->nullable();
			$table->string('IA_FULL')->nullable();
			$table->string('FIO')->nullable();
			$table->string('ST_NAME')->nullable();
			$table->string('IM')->nullable();
			$table->dateTime('parsed_at')->nullable()->default(null);
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
		Schema::drop('parsed_datas');
	}

}
