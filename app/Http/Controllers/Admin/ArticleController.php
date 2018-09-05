<?php

namespace App\Http\Controllers\Admin;

use App\Article;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ArticleController extends Controller
{
    /**
     * 显示所有文章
     * @return mixed
     */
    public function index() {
        return view('admin/article/index')->withArticles(Article::all());
    }

    /**
     * 显示新增文章页面
     */
    public function create() {
        return view('admin/article/create');
    }

    /**
     * 新增文章具体实现
     */
    public function store(Request $request) {
        $this->validate($request, [
            'title' => 'required|unique:articles|max:255',
            'body'  => 'required'
        ]);
        $article = new Article();
        $article->title = $request->get('title');
        $article->body = $request->get('body');
        $article->user_id = $request->user()->id;

        if($article->save()) {
            return redirect('admin/article');
        } else {
            return redirect()->back()->withInput()->withErrors('保存失败！');
        }
    }

    /**
     * 显示修改文章页面
     */
    public function edit($id) {
        $article = Article::find($id);
        if($article == null) {
            return redirect('admin/article')->withErrors('没有此篇文章！');
        } else {
            return view('admin/article/edit')->withArticle($article);
        }
    }

    /**
     * 修改文章具体实现
     */
    public function update(Request $request, $id) {
        $this->validate($request, [
            'title' => 'required|unique:articles|max:255',
            'body'  => 'required'
        ]);
        $data['title'] = $request->title;
        $data['body'] = $request->body;
        $data['user_id'] = $request->user()->id;
        if(Article::find($id)->update($data)) {
            return redirect('admin/article');
        } else {
            return redirect()->back()->withInput()->withErrors('修改失败！');
        }
    }

    public function destroy($id) {
        Article::find($id)->delete();
        return redirect()->back()->withInput()->withErrors('删除成功！');
    }
}
