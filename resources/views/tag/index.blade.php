@extends('layouts.app')

@section('content')

<div class="container">

    <div class="row">
        <div class="col-md-8">
            <a class="btn btn-info btn-sm" href="{{ route('tags.create') }}">Create Tag</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            @if(count($tags)> 0)
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">SL.</th>
                        <th scope="col">Name</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($tags as $k => $tag)
                    <tr>
                        <th scope="row">{{$k+1}}</th>
                        <td>{{$tag->name}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{$tags->links()}}
            @else
            <p>No Tag Found.</p>
            @endif

        </div>
    </div>
</div>

@endsection