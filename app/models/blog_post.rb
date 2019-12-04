class BlogPost < ApplicationRecord
    # we have not associations or relationships
    validates :title, presence: true
    validates :content, presence: true

end
