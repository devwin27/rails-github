class ReposController < ApplicationController

  def index
      @repos = Repo.all
      @articles = Article.all
  end

  def show
      @repo = Repo.find(params[:id])
  end

  def new
      @repo = Repo.new
  end

  def create
      @repo = Repo.new(repo_params)

      if @repo.save
          redirect_to @repo
      else
          render :new
      end
  end

  def edit
      @repo = Repo.find(params[:id])
  end

  def update
      @repo = Repo.find(params[:id])

      if @repo.update(repo_params)
          redirect_to @repo
      else
          render :edit
      end
  end

  def destroy
      @repo = Repo.find(params[:id])
      @repo.destroy

      redirect_to root_path
  end

  private
      def repo_params
          params.require(:repo).permit(:name, :type_repo, :body)
      end
end
