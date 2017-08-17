<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ParsedData extends Model {

	protected $guarded =[];

    public function filials_data() {
        return $this->hasMany(ParsedData::class,'parent_id','id');
    }
}
