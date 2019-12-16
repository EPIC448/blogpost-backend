class BlogPostsController < ApplicationController

    
    #  spit out API in json formate
    def index
        @blog_posts = BlogPost.all 
        render json: @blog_posts
    end



    def create
        @blog_post = BlogPost.new(blog_post_params)
        if @blog_post.save
            render json: @blog_post
        else
            render json: {error: 'Error Creating this Blog Post'}
        end
        
    end


    def show
        @blog_post = BlogPost.find(params[:id])
        render json: @account
    end


    # update and delete is not madatory 

    private

    def blog_post_params
        params.require(:blog_post).permit(:title, :content)
    end

end
