class BlogPostsController < ApplicationController
  def index
    @posts = BlogPost.all
    #render "index.html.erb"
  end

  def show
    @post = BlogPost.find(params[:id])
    #render "show.html.erb"
  end

  def new
    #rend "new.html.erb"
  end

  def create
      @post = BlogPost.new(title: params[:title], content: params[:content])

      if @post.save
          redirect_to @post
      else
          render action: :new
    end
  end

  def delete
    @post = BlogPost.find(params[:id])
    if @post.destroy
        redirect_to '/blog_posts'
    else
        p "got to hell you bastard"
    end
  end

end
