class CommentsController < ApplicationController
  before_action :load_commentable



  def index
    @comments = @commentable.comments
  end

  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @commentable.comments.new(comment_parameters)
    if @comment.save
      redirect_to @commentable, notice: "Comment created."
    else
      render :new
    end
  end


  def show
    @product = Product.find(comment_parameters[:product_id])
    @commentable = @product
    @comments = @commentable.comments
    @comment = Comment.new
  end


  private
  def comment_parameters
   #
   # params.require(:comment ).permit(:commit,:product_id, comment: [:content])
   #
    params.require(:comment ).permit!
  end
  def load_commentable
    resource, id = request.path.split('/')[1, 2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end
end
