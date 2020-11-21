class BlogpostsController < ApplicationController


    
    
    def index

        @blogposts = Blogpost.all 

  
        render json: @blogposts
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
                
                if @blog_post.save
                    render json: @blog_post
                else
                    render json: {error: @blog_post.error}
                end
       
    
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
