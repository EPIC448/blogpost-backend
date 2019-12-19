class BlogpostSerializer < ActiveModel::Serializer

  include FastJsonapi::BlogpostSerializer

  attributes  :title, :content
end
