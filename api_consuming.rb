require 'rubygems'
require 'httparty'

# this is a different gem. Just PORO
class EdutechionalResty
  include HTTParty
  base_uri "http://edutechional-resty.herokuapp.com"

  def posts
    self.class.get('/posts.json')
  end
end


edutechional_1 = EdutechionalResty.new

p edutechional_1
puts edutechional_1.posts