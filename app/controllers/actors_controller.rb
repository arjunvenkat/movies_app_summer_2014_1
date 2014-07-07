class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find_by(id: params[:id])
  end

  def new
  end

  def create
    @actor = Actor.new
    @actor.name = params[:name]
    @actor.dob = params[:dob]

    if @actor.save
      redirect_to "/actors/#{ @actor.id }"
    else
      render 'new'
    end
  end

  def edit
    @actor = Actor.find_by(id: params[:id])
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.name = params[:name]
    @actor.dob = params[:dob]

    if @actor.save
      redirect_to "/actors/#{ @actor.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy


    redirect_to "/actors"
  end
end
