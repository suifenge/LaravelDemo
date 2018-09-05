@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">管理评论</div>

                    <div class="panel-body">
                        @if(count($errors) > 0)
                            <div class="alert alert-danger">
                                {!!  implode('<br>', $errors->all()) !!}
                            </div>
                        @endif

                        <table class="table" border="0">
                            <tr style="background-color: #E6E6E6;">
                                <th class="d-md-table-cell">Comment</th>
                                <th class="d-md-table-cell">User</th>
                                <th class="d-md-table-cell">Page</th>
                                <th class="d-md-table-cell">编辑</th>
                                <th class="d-md-table-cell">删除</th>
                            </tr>
                            @foreach($comments as $comment)
                                @if($loop->index % 2 == 0)
                                    <tr>

                                @else
                                    <tr style="background-color: #F6F6F6;">
                                @endif
                                    <td>{{ $comment->content }}</td>
                                    <td>
                                        @if($comment->website)
                                            <a href="{{ $comment->website }}" target="_blank">{{ $comment->nickname }}</a>
                                        @else
                                            {{ $comment->nickname }}
                                        @endif
                                        <br>
                                        {{ $comment->email }}
                                    </td>
                                    <td>
                                        <a href="{{ url('article/'.$comment->article->id) }}">{{ $comment->article->title }}</a>
                                    </td>
                                    <td><a href="{{ url('admin/comment/'.$comment->id.'/edit') }}" class="btn btn-success">编辑</a></td>
                                    <td>
                                        <form action="{{ url('admin/comment/'.$comment->id) }}" method="post" style="display: inline">
                                            {{ method_field('DELETE') }}
                                            {{ csrf_field() }}
                                            <button type="submit" class="btn btn-danger">删除</button>
                                        </form>
                                    </td>
                                    </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection