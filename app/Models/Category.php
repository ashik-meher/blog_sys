<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $guarded = [];

    public static function getDropDownList()
    {
        $options = '<option value="">-- Select Category --</option>';
        foreach (Category::all() as $category) {
            $option = '<option value="' . $category->id . '">' . $category->name . '</option>';
            $options .= $option;
        }
        return $options;
    }

    public function posts()
    {
        return $this->hasMany(Post::class);
    }
}
