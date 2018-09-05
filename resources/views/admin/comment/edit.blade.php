@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">编辑评论</div>
                    <div class="panel-body">
                        @if(count($errors) > 0)
                            <div class="alert alert-danger">
                                {!!  implode('<br>', $errors->all()) !!}
                            </div>
                        @endif
                        <form action="{{ url('admin/comment/'.$comment->id) }}" method="post">
                            {!! method_field('PUT') !!}
                            {!! csrf_field() !!}
                            <div class="form-group">
                                <label>Nickname</label><br>
                                <input type="text" class="form-control" name="nickname" placeholder="请输入昵称" value="{{ $comment->nickname }}">
                            </div>
                            <div class="form-group">
                                <label>Email</label><br>
                                <input type="text" class="form-control" name="email" placeholder="请输入邮箱" value="{{ $comment->email }}">
                            </div>
                            <div class="form-group">
                                <label>Website</label><br>
                                <input type="text" class="form-control" name="website" placeholder="http://" value="{{ $comment->website }}">
                            </div>
                            <div class="form-group">
                                <label>Comment</label><br>
                                <textarea class="form-control" rows="10" required placeholder="请输入评论" name="content">{{ $comment->content }}</textarea>
                            </div>
                            <button type="submit" class="btn btn-info">提交修改</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection