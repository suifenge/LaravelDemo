<?php

namespace App\Http\Controllers\Admin;

use App\Comment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CommentController extends Controller
{
    public function index() {
        return view('admin/comment/index')->withComments(Comment::all());
    }

    public function edit($id) {
        return view('admin/comment/edit')->withComment(Comment::find($id));
    }

    public function update(Request $request, $id) {
        $this->validate($request, [
            'nickname' => 'required',
            'content' => 'required'
        ]);
        $data['nickname'] = $request->get('nickname');
        $data['email'] = $request->get('email');
        $data['website'] = $request->get('website');
        $data['content'] = $request->get('content');
        if(Comment::find($id)->update($data)) {
            return redirect('admin/comment');
        } else {
            return redirect()->back()->withInput()->withErrors('修改评论失败！');
        }
    }

    public function destroy($id) {
        Comment::find($id)->delete();
        return redirect()->back()->withInput()->withErrors('删除评论成功！');
    }
}
