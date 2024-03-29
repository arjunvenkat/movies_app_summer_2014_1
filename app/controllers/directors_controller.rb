class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find_by(id: params[:id])
  end

  def new
  end

  def create
    @director = Director.new
    @director.name = params[:name]
    @director.dob = params[:dob]

    if @director.save
      redirect_to "/directors/#{ @director.id }"
    else
      render 'new'
    end
  end

  def edit
    @director = Director.find_by(id: params[:id])
  end

  def update
    @director = Director.find_by(id: params[:id])
    @director.name = params[:name]
    @director.dob = params[:dob]

    if @director.save
      redirect_to "/directors/#{ @director.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @director = Director.find_by(id: params[:id])
    @director.destroy


    redirect_to "/directors"
  end
end
