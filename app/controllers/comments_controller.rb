class CommentsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create(comment_params)
    if @comment.save
      flash[:notice] = "New comment has been posted."
      redirect_to @recipe
    else
      flash[:alert] = "Please enter comment with your name."
      redirect_to recipe_path(@recipe)
    end
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.find(params[:id])
    @comment.destroy
    redirect_to recipe_path(@recipe)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
