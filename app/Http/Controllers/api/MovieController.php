<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\BaseController;
use App\Http\Controllers\Controller;
use App\Models\Movie;
use App\Models\Category;
use Illuminate\Http\Request;

class MovieController extends BaseController
{
    public function index(){
        $movies = Movie::with('images')->get()->map(function($item){
            $item['categories'] = Category::whereRaw('id REGEXP "(^|,)('.str_replace(',', '|', $item->categoryIds).')(,|$)"')->get();
            return $item;
        });
        return $this->success("Movie list", $movies);
    }

    public function detail($movieId){
        if(Movie::where('id', $movieId)->count() == 0) return $this->error('Movie not found');
        $movie = Movie::where('id', $movieId)->with('images')->with('casts')->with('casts.cast')->first();
        $categories = Category::whereRaw('id REGEXP "(^|,)('.str_replace(',', '|', $movie->categoryIds).')(,|$)"')->get();
        return $this->success("Movie Detail", [
            'data'=>$movie,
            'categories'=> $categories
        ]);
    }
}
