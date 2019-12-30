class BlogPost < ApplicationRecord
    # we have not associations or relationships
    validates :title, presence: true
    validates :content, presence: true

    #  Note. Update is not a Requirments

#     def update_blog(title, content)
#         # Update a blog, whenever we add to it.
#         if title == 'title' && content == 'content'
#            if  title != self.title 
#             title = self

#             #  Change what was entered ... You may not need to do a logic here. 
# #          thinking .  self.title = self.title.update
# #             BlogPost.update(id, :title = > 'new Title')

#            self.save
#           end

#         elsif
#             if self.content != content
# #           Change to the new content

#        self.content = content
#     #    thinking .  self.content = self.title.content 

#                 self.save
#             end

#         else

#             return 'Enter the Title and Content'

#         end

#     end

end

# */
