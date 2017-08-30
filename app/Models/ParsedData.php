<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


/**
 * @property integer parsed_at
 * @property string IA_PHONE_CODE
 * @property string IA_PHONE
 * @property string IM_NUMIDENT
 * @property string IAN_FULL_NAME
 */
class ParsedData extends Model
{

    protected $guarded = [];


    public function filials_data()
    {
        return $this->hasMany(ParsedData::class, 'parent_id', 'id');
    }
    public function children()
    {
        return $this->hasMany(ParsedData::class, 'parent_id', 'id');
    }
}
