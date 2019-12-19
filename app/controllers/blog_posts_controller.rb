class BlogPostsController < ApplicationController

    # notes: Looking serilazers should help with that or RAils docmentations.
    #  Because the serializer is not communicationg right now
    #  spit out API in json formate
    
    def index
        @blog_posts = BlogPost.all 
        
    # debugger
        # render json: BlogpostSerializer.new(@blog_posts)
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
        render json: BlogpostSerializer.new(@blog_post)
    end


    # update and delete is not madatory 

    private

    def blog_post_params
        params.require(:blog_post).permit(:title, :content)
    end

end
