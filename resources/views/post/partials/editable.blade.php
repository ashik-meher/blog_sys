<!--Comment Modal -->
<div class="modal fade" id="makePostCommentModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content card">
            <div class="card-header">
                <button type="button" class="close m-0" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="times-25px">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="makePostCommentForm" name="makePostCommentForm" class="form-horizontal">
                    @csrf
                    <input type="hidden" name="post_id" id="post_id">
                    <div class="form-group col-12">
                        <label for="comment" class="w-100 control-label">Type Comment</label></label>
                        <div class="w-100">
                            <textarea class="form-control" name="content" id="content"></textarea>
                        </div>
                    </div>

                    <div class="col-sm-offset-2 w-100 col-12">
                        <button type="submit" class="btn btn-primary btn-sm" id="makePostCommentFormSubmitBtn" value="create">post
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!--Edit Comment Modal -->
<div class="modal fade" id="editPostCommentModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content card">
            <div class="card-header">
                <button type="button" class="close m-0" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="times-25px">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editPostCommentForm" name="editPostCommentForm" class="form-horizontal">
                    @csrf
                    <input type="hidden" name="comment_id" id="comment_id">
                    <div class="form-group col-12">
                        <label for="comment" class="w-100 control-label">Edit Comment</label></label>
                        <div class="w-100">
                            <textarea class="form-control" name="edit_content" id="editContent"></textarea>
                        </div>
                    </div>

                    <div class="col-sm-offset-2 w-100 col-12">
                        <button type="submit" class="btn btn-primary btn-sm" id="editPostCommentFormSubmitBtn" value="save">save
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!--Delete Comment Modal -->
<div class="modal fade" id="deletePostCommentModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content card">
            <div class="card-header">
                <button type="button" class="close m-0" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="times-25px">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="deletePostCommentForm" name="deletePostCommentForm" class="form-horizontal">
                    @csrf
                    <input type="hidden" name="delete_comment_id" id="delete_comment_id">
                    <div class="form-group col-12">
                        <label for="comment" class="w-100 control-label">Are you sure want to delete the comment?</label></label>
                    </div>

                    <div class="col-sm-offset-2 w-100 col-12">
                        <button type="submit" class="btn btn-danger btn-sm" id="deletePostCommentFormSubmitBtn" value="Yes">Delete
                        </button>
                        <button type="button" class="btn btn-warning btn-sm" style="color:#FFFFFF" data-dismiss="modal" aria-label="Close">
                            Cancel
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>