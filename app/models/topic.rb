class Topic < ActiveRecord::Base
  belongs_to :node 
  belongs_to :author, class_name: "User", foreign_key: "user_id"
end
