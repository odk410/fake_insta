class PostsController < ApplicationController
  def index
    # 우리가 가지고 있는 모든 글을 보여준다.
    @posts = Post.all.reverse
  end

  def new
    # 새로운 글을 받을 수 있는 form

  end

  def create
    # new에서 날아온 데이터를 저장한다.
    @title = params[:title]
    @content = params[:content]

    Post.create(
      :title => params[:title],
      :content => params[:content]
    )

    # Rails에서는 redirect to 가 아닌 _를 붙인 redirect_to를 써주어야 한다.
    redirect_to '/posts'
  end
end
