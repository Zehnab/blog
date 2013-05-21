class Post < ActiveRecord::Base
  validates :name, :presence => true
   validates :title, :presence => true
    validates :content, :presence => true
     validates :exerpt, :presence => true
      validates :location, :presence => true
      
      
      belongs_to :user
end
