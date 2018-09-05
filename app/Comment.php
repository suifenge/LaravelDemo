<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $fillable = ['nickname', 'email', 'website', 'content', 'article_id'];

    public function article() {
        return $this->belongsTo('App\Article', 'article_id', 'id');
    }
}
