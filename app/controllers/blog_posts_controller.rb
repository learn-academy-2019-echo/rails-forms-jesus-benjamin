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
     @post = BlogPost.new
    #rend "new.html.erb"
  end

  def edit
     @post = BlogPost.find(params[:id])
  end

  def update
      @post = BlogPost.find(params[:id])
      @post.update(blog_post_params)
      redirect_to @post
  end
  def create
      @post = BlogPost.new(blog_post_params)

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

  private
     def blog_post_params
       params
         .require(:blog_post)
         .permit([:title, :content])
     end

end
