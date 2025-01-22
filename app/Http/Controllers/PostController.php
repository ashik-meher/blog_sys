<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use App\Http\Requests\StorePostRequest;
use App\Http\Requests\UpdatePostRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::all();

        $posts = Post::orderBy('id', 'desc')->with(['user', 'comments'])->paginate(3);

        return view('post.index', ['posts' => $posts, 'categories' => $categories]);
    }

    /**
     * Filter posts based on categories
     * 
     * @return \Illuminate\Http\Response
     */
    public function filterByCategories(Request $request)
    {
        $searchCategories = $request->input('filter_categories');

        if (!($request->has('filter_categories'))) {
            $searchCategories = array();
            $searchCategories[] = 0;
        }

        if (count($searchCategories) > 0) {
            $posts = Post::orderBy('id', 'desc')->whereIn('category_id', $searchCategories)->with(['user', 'comments'])->paginate(3)->withQueryString();
        }

        if (in_array(0, $searchCategories)) {
            $posts = Post::orderBy('id', 'desc')->with(['user', 'comments'])->paginate(3)->withQueryString();
        }

        $categories = Category::all();

        return view('post.index', ['posts' => $posts, 'categories' => $categories, 'searchCategories' => $searchCategories]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('post.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePostRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePostRequest $request)
    {
        Post::create([
            'title' => $request->input('title'),
            'description' => $request->input('description'),
            'category_id' => $request->input('category_id'),
            'user_id' => Auth::user()->id
        ]);

        session()->flash('message', 'Post upload successful');

        return redirect('/posts');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return view('post.show', ['post' => $post]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePostRequest  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatePostRequest $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        //
    }
}
