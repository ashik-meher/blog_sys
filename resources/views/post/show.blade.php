@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <a href="{{url()->previous()}}" style="margin-bottom:20px">Back</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <div class="card">
                <img class="card-img-top" style="height: 250px;" src="{{asset('/images/breaking_news.jpg')}}" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title"><a href="{{url('/posts/'. $post->id)}}">{{$post->title}}</a></h5>
                    <p style="color:blue; font-size:11px"><i>Published {{$post->created_at->diffForHumans()}} by {{$post->user->name}}</i></p>
                    <p style="display: inline;font-weight:bold">Category </p><button class="btn btn-success btn-sm">{{$post->category->name}}</button>
                    <p class="card-text">{{$post->description}}</p>
                    <button data-post-id="{{$post->id}}" type="button" class="makePostComment btn btn-primary btn-sm" data-toggle="modal" data-target="#makePostCommentModal">
                        Comment on this post
                    </button>
                    <div class="comments" style="margin: 5px;">

                        @if((count($post->comments)) > 0)
                        <p><i>{{count($post->comments)}} comments posted</i></p>
                        @foreach($post->comments as $comment)
                        <div class="card p-6">
                            <div class="card-body">
                                <p><i>{{$comment->content}}</i></p>
                            </div>

                            <div class="card-footer">
                                <p style="color:blue; font-size:11px">{{$comment->created_at->diffForHumans()}} by {{$comment->user->name}}</p>
                                @can('update', $comment)
                                <button data-comment-id="{{$comment->id}}" data-comment-content="{{$comment->content}}" type="button" class="editPostComment btn btn-primary btn-sm" data-toggle="modal" data-target="#editPostCommentModal">
                                    Edit Comment
                                </button>
                                @endcan
                                @can('delete', $comment)
                                <button data-comment-id="{{$comment->id}}" type="button" class="deletePostComment btn btn-danger btn-sm" data-toggle="modal" data-target="#deletePostCommentModal">
                                    Delete
                                </button>
                                @endcan
                            </div>
                        </div>
                        @endforeach
                        @else
                        <p><i>No comments yet </i></p>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@include('post.partials.editable')

@endsection

@push('scripts')

<script>
    $(document).ready(function() {
        console.log('page script init');

        $(document.body).on('click', '.makePostComment', function(e) {
            e.preventDefault();
            var postId = $(this).data('postId');
            console.log('post id:', postId);
            $('#makePostCommentModal').modal('show');
            $('#post_id').val(postId);
        })

        $('#makePostCommentModal,#editPostCommentModal,#deletePostCommentModal').on('hidden.bs.modal', function() {
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            $('body').css('overflow', 'auto');
        });

        $(document.body).on('click', '#makePostCommentFormSubmitBtn', function(e) {
            e.preventDefault();
            $(this).html('posting ..')
            $.ajax({
                data: $('#makePostCommentForm').serialize(),
                url: "{{url('/comments')}}",
                type: 'POST',
                success: function(data) {
                    console.log('success:');
                    console.log(data)
                    toastr.info(data.message);
                },
                error: function(err) {
                    console.log('error:');
                    console.log(err);
                    if (err.status === 422) {
                        toastr.error('Validation Error');
                        toastr.error(err.responseJSON.message);
                    } else {
                        toastr.error(err.responseJSON.message);
                    }
                },
                complete: function() {
                    $('#makePostCommentFormSubmitBtn').html('post')
                    $('#makePostCommentModal').modal('hide');
                    window.location.reload();
                }
            })
        })

        //

        $(document.body).on('click', '.editPostComment', function(e) {
            e.preventDefault();
            var commentId = $(this).data('commentId');
            var commentContent = $(this).data('commentContent');
            console.log('comment id:', commentId);
            $('#editContent').val(commentContent);
            $('#editPostCommentModal').modal('show');
            $('#comment_id').val(commentId);
        })

        $(document.body).on('click', '#editPostCommentFormSubmitBtn', function(e) {
            e.preventDefault();
            $(this).html('saving ..')
            var editableCommentId = $('#comment_id').val();
            $.ajax({
                data: $('#editPostCommentForm').serialize(),
                url: "{{url('/comments')}}" + '/' + editableCommentId,
                type: 'PUT',
                success: function(data) {
                    console.log('success:');
                    console.log(data);
                    toastr.info(data.message);
                },
                error: function(err) {
                    console.log('error:');
                    console.log(err);
                    if (err.status === 422) {
                        toastr.error('Validation Error');
                        toastr.error(err.responseJSON.message);
                    } else {
                        toastr.error(err.responseJSON.message);
                    }
                },
                complete: function() {
                    $('#editPostCommentFormSubmitBtn').html('save')
                    $('#editPostCommentModal').modal('hide');
                    window.location.reload();
                }
            })
        })

        //

        $(document.body).on('click', '.deletePostComment', function(e) {
            e.preventDefault();
            var commentId = $(this).data('commentId');
            console.log('comment id:', commentId);
            $('#deletePostCommentModal').modal('show');
            $('#delete_comment_id').val(commentId);
        })

        $(document.body).on('click', '#deletePostCommentFormSubmitBtn', function(e) {
            e.preventDefault();
            $(this).html('Deleting ..')
            var deleteCommentId = $('#delete_comment_id').val();
            $.ajax({
                data: $('#deletePostCommentForm').serialize(),
                url: "{{url('/comments')}}" + '/' + deleteCommentId,
                type: 'DELETE',
                success: function(data) {
                    console.log('success:');
                    console.log(data);
                    toastr.info(data.message);
                },
                error: function(err) {
                    console.log('error:');
                    console.log(err);
                    if (err.status === 422) {
                        toastr.error('Validation Error');
                        toastr.error(err.responseJSON.message);
                    } else {
                        toastr.error(err.responseJSON.message);
                    }
                },
                complete: function() {
                    $('#deletePostCommentFormSubmitBtn').html('Delete')
                    $('#deletePostCommentModal').modal('hide');
                    window.location.reload();
                }
            })
        })
    })
</script>

@endpush