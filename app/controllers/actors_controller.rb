class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def create
    actor_params = params.require(:actor).permit!
    if actor_params["death_date"].present? && actor_params["death_place"].present?
      actor_params.merge!({"alive" => false})
    else
      actor_params.merge!({"alive" => true})
    end
    actor = Actor.new(actor_params)

    if actor.save
      redirect_to actors_path
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
