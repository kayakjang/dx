class User < ActiveRecord::Base
  has_many :entries
  has_many :votes
end
