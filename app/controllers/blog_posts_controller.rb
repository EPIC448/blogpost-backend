class BlogPostsController < ApplicationController

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

    def update
        @blog_post = BlogPost.find(params[:id])

                 @blog_post.update(title: params[:title],content: params[:content])
                # binding.pry
                if @blog_post.save
                    render json: @blog_post
                else
                    render json: {error: @blog_post.error}
                end
        # Check to update the block that they only submited...
        # else if they are only update the content....  it makes the title Null... And it will save it like that
        #  we only what to update what ever they update.
    
    end


    def show
        @blog_post = BlogPost.find(params[:id])
        render json: BlogpostSerializer.new(@blog_post)
    end


    private

    def blog_post_params
        params.require(:blog_post).permit(:title, :content)
    end

end
