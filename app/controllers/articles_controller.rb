class ArticlesController < ApplicationController
  def index
    @articles = article.all
  end

  def new
    @article = article.new
  end

  def show
    @article = article.find(params[:id])
  end

  def create
    @article = article.new(article_params)
    @article.save
    redirect_to articles_path(@article)
  end

  def done
    @article = article.find(params[:id])
    @article.mark_complete!
  end

  def edit
    @article = article.find(params[:id])
  end

  def update
    @article = article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path(@article)
  end

  def destroy
    @article = article.find(params[:id])
    @article.destroy
    redirect_to articles_path(@article)
  end
end
