class Post < ActiveRecord::Base
  attr_accessible :title, :body

  include Tire::Model::Search
  include Tire::Model::Callbacks

  index_name Rails.env
end
