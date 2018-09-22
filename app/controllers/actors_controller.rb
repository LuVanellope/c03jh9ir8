class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end
 
  def create
    @actor = Actor.new(actor_params)
    @actor.save
    if @actor.save
      redirect_to actors_path
    else
      render :new
    end
  end
  
  def new
    @actor= Actor.new
  end

  private

  def actor_params
    params.require(:actor).permit(:image_url, :bio, :birth_date, :birth_place, :alive, :death_date, :death_place)
  end
end
