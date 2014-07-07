class RolesController < ApplicationController

  def index
    @roles = Role.all
  end

  def show
    @role = Role.find_by(id: params[:id])
  end

  def new
  end

  def create
    @role = Role.new
    @role.actor_id = params[:actor_id]
    @role.movie_id = params[:movie_id]
    @role.name = params[:name]

    if @role.save
      redirect_to "/roles/#{ @role.id }"
    else
      render 'new'
    end
  end

  def edit
    @role = Role.find_by(id: params[:id])
  end

  def update
    @role = Role.find_by(id: params[:id])
    @role.actor_id = params[:actor_id]
    @role.movie_id = params[:movie_id]
    @role.name = params[:name]

    if @role.save
      redirect_to "/roles/#{ @role.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @role = Role.find_by(id: params[:id])
    @role.destroy


    redirect_to "/roles"
  end
end
