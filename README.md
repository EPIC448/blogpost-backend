
**Project Title**
 
 **BlogPost "Back_End" section** 

 ![Back_End of this section](https://media.giphy.com/media/9YKvq41UGOkCI/giphy.gif)

**Motivation**

 The is half of a whole blogpost project. This part was created to function as a API section where the data would be retrived for the front_end part of the project. 

 Using Active Record Mechanics(CRUD), I was  able to create data and retrive the data as needed. Also, I created a table using SQL. Also, has_many, belongs_to, has_many :through relationship  models were used for the project.



**Code_Sample**

 *Schema*
  ```

ActiveRecord::Schema.define(version: 2019_12_04_221736) do

  create_table "blog_posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
  ```

*Seed*

```
blogpost = BlogPost.create([
            {title: 'Star wars', content: 'story about the last Jedi.'}, 
                   
            {title:'second title', content: 'is a form of news consisting of 
                    deliberate disinformation or hoaxes spread via traditional 
                    news media.'},
            {title: 'Big Black Horse', content: 'on a cherry tree'}


                ])
```

*Controller_code*
```
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

}
```

**Tech/Framework used**
  Project used a Ruby on Rails framework
  *Ruby version*

ruby-2.6.1

   *System dependencies*


ruby '2.6.1'

gem 'rails', '~> 5.2.3';
gem 'sqlite3';
gem 'puma', '~> 3.11';
gem 'rack-cors';

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'active_model_serializers'
gem 'pry', '~> 0.12.2'
gem 'fast_jsonapi'

**Installation**

*Configuration*

Make Sure to Fork this project into you github repo then clone it down to you local machine https://github.com/EPIC448/blogpost-backend

**Hint:**

 Make sure to  clone and start the Front_end section of this project at https://github.com/EPIC448/blogpost-frontend  as there come in pairs.

 In your local shell or terminal, navigate to  the proper folder and type :
  *Rail server or Rails s*  into the Terminal


Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view in the browser.

**Commiting to Git hub**
   
[ ]Open the terminal. 

[ ]Change the current working directory to your local repository. 

[ ]Commit the file that you've staged in your local repository.

[ ] $ git commit -m "Add existing file"
Push the changes in your local repository to GitHub. 

[ ]$ git push origin branch-name. 
   
   

**Meta**

Your Name – samuel.O -> samrey2018@gmail.com / https://github.com/epic448

Distributed under the Samuel.O license. See LICENSE for more information.

https://github.com/epic448/github-link


* ...





