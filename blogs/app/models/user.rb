class User < ActiveRecord::Base
  has_many :articals
  has_many :comments
end
