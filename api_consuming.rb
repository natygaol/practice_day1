require 'rubygems'
require 'httparty'

class EdutechionalResty
  include HTTParty
  base_uri "http://edutechional-resty.herokuapp.com"

  def posts
    self.class.get('/posts.json')
  end
end


edutechional_1 = EdutechionalResty.new

puts edutechional_1.posts