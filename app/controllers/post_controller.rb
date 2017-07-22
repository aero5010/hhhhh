class PostController < ApplicationController
  def index
    
  end
  
  def list
    @posting = Post.all
    @comment = Comment.all
  end
  
  
  def create
    
    @posting = Post.new
    @posting.title = params[:p_title]
    @posting.book = params[:b_title]
    @posting.author = params[:b_author]
    @posting.posting = params[:posting]
    
    @hashtag = params[:hash_tag].split("#")
    @hashtag.each do |tag|
        @ht = Hashtag.new
        @ht.name = tag
        @ht.save
        @posting.hashtags << @ht
      end
    
    @posting.save  
    
    redirect_to '/post/list'
    
    
  end

  def edit
  end

  def delete
  end
end
