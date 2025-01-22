@extends('layouts.app')

@section('content')

<div class="container">

    <div class="row">
        <div class="col-md-8">
            <a class="btn btn-info btn-sm" href="{{ route('categories.create') }}">Create Category</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            @if(count($categories)> 0)
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">SL.</th>
                        <th scope="col">Name</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($categories as $k => $category)
                    <tr>
                        <th scope="row">{{$k+1}}</th>
                        <td>{{$category->name}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{$categories->links()}}
            @else
            <p>No Category Found.</p>
            @endif

        </div>
    </div>
</div>

@endsection