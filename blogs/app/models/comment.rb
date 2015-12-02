class Comment < ActiveRecord::Base
  belongs_to :articale
  belongs_to :user
end
