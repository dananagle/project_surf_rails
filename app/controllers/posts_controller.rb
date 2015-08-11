class PostsController < ApplicationController

  class Post
    attr_reader :name, :photo
    def initialize(name, photo)
      @name = name
      @photo = photo
    end
  end

  before_action do

    @post_name = []
    @post_name << Post.new("Hear me now," ,'IMG_1622.JPG')
    @post_name << Post.new("And the knight with his banner" ,"IMG_1653.JPG")
    @post_name << Post.new("all bravely unfurled" ,"IMG_1654.JPG")
    @post_name << Post.new("Now Hurls down" ,"IMG_1659.JPG")
    @post_name << Post.new("His Gauntlet, To Thee" ,"IMG_1661.JPG")
  end



  def index
    @post = @post_name.first
    render :show
  end

  def show
    @post = @post_name.find do |post|
      post.name == params[:post_name]
    end
  end




end
