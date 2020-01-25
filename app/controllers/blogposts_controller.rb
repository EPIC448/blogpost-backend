class BlogpostsController < ApplicationController


    # notes: Looking serilazers should help with that or RAils docmentations.
    #  Because the serializer is not communicationg right now
    #  spit out API in json formate
    
    
    def index
        # binding.pry

        @blogposts = Blogpost.all 

    # debugger
        # render json: BlogpostSerializer.new(@blog_posts)
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

        # if @blog_post.update_blog(title: params[:title],content: params[:content]) !=  @blog_post(title: params[:title],content: params[:content])
            #   Need to check here
                 @blog_post.update(title: params[:title],content: params[:content])
                
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


    # update and delete is not madatory 

    private

    def blog_post_params
        params.require(:blog_post).permit(:title, :content)
    end

end
