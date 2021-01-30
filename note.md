
  requirment Checks out for backend

 Just Notes. 


 BACK-END must have. (Requirements. )

o	Make use of async actions to send data to and receive data from a server
o	Your Rails API should handle the data persistence. You should be using fetch() within your actions to GET and POST data from your API - do not use jQuery methods.
o	Your client-side application should handle the display of data with minimal data manipulation

Need valuable Products. [In Order.. please fill free to correct me…..]
  Start Building. 

  Models (blogPosts) => [no relationship needed.] 
   Attributes of blogPost will be :title -string and :content - string

 And An ID will automatically be created for each instance of BlogPost. 

And  “rack-cors”  in the gem file

 # inside Config/initializer/ cors.rb.. uncomments. 

Rails.application.config.middleware.insert_before 0, Rack::Cors do
	  allow do
	    origins '*'
	 
	    resource '*',
	      headers: :any,
	      methods: [:get, :post, :put, :patch, :delete, :options, :head]
	  end
	end




 Question:  Validation are not mandatory for this project correct.? 

 [Tools,  Rake DB:drop is another fun tool]

 
Next=>  Do DB Migrate here… so set up the data base. 
https://learn.co/tracks/full-stack-web-development-v8/module-8-orms-and-activerecord/section-2-activerecord/migrations-and-active-record-lab


SERIALIZER
Add active Model Serizilers. In the Gem File…. (It inside building APIs.) to set it up. 

Blog Post(attributs: id, :title,   :content)
 

Controllers (blog_title & blog_post)
 (index, create, show,destroy, (private(blog title_params ) (blog post_ params))) : spiting out JSON 


### Inside configure  Routes.rb
    set up =>  namespace   
 set up => resources :blog_titles do
   	resources  :blog_posts (note, nesting the blog_post inside the blog_title so we can access it later. )




To do list for the project ...

Question: I feel like projects is so nested. I cant access the array. 

 Make sure that Yo have access the data coming in to your React Redux app,
  
  Have it display on the webpages. 
  

  look over serializer
   https://learn.co/lessons/using-active-model-serializer


   use binding.pry
   working on the Update controller. For some reason, the Pry is taking, but we cant excite out of it.
   And we need to see what we need to compare the new submitted blog_post to.... As in checking if its already excite...

--- This website really helped W/ ruby installations/ updates. https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-macos

--- App is Updated and working.  