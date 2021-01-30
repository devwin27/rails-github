class RepositoryController < ApplicationController

  def index
      @repositorys = Repository.all
  end

  def show
      @repository = Repository.find(params[:id])
  end

  def new
      @repository = Repository.new
  end

  def create
      @repository = Repository.new(repository_params)

      if @repository.save
          redirect_to @repository
      else
          render :new
      end
  end

  def edit
      @repository = Repository.find(params[:id])
  end

  def update
      @repository = Repository.find(params[:id])

      if @repository.update(repository_params)
          redirect_to @repository
      else
          render :edit
      end
  end

  def destroy
      @repository = Repository.find(params[:id])
      @repository.destroy

      redirect_to root_path
  end

  private
      def repository_params
          params.require(:repository).permit(:title, :summary)
      end
end
