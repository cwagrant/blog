class CommentsController < ApplicationController
  http_basic_authenticate_with name: "cwagrant", password: "seadubya",
    only: :destroy

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)

    if true
      puts 'blah blah'
    end

    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy

    redirect_to article_path(@article)
  end

  def rate
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.ratings.create(rateable_value: params[:value])

    redirect_to @article #action: "show", id: params[:article_id]
  end

private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
