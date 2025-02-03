<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function posts()
    {
        return $this->belongsToMany(Post::class, 'post_tag', 'tag_id', 'post_id');
    }

    public static function getDropDownList()
    {
        $options = '';
        foreach (Tag::orderBy('id', 'desc')->get() as $tag) {
            $option = '<option value="' . $tag->id . '">' . $tag->name . '</option>';
            $options .= $option;
        }
        return $options;
    }
}
