<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Movie;
use Illuminate\Http\Request;
use \App\Http\Controllers\BaseController as BaseController;

class CategoryController extends BaseController
{
    public function index(){
        $categories = Category::all();
        return $this->success('Category list', $categories );
    }

    public function detail($categoryId){
        // if(Category::where('id',$categoryId)->count()==0) return $this->error('Category not found');
        $category = Category::findOrFail($categoryId);
        $movies = Movie::whereRaw('categoryIds REGEXP "(^|,)('.$categoryId.')(,|$)"')->get();
        return $this->success('Category List', [
            'category'=>$category,
            'movies'=>$movies
        ]);
    }
}
