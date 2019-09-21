module V1
  class PeopleController < ApplicationController

    def index
      people = Person.all
      render json: { people: people.as_json(methods: [:as_director, :as_producer, :as_actor_actress, :full_name, :tag_names]) }
    end
  
    def show
      person = Person.find(params[:id])
      render json: { person: person.as_json(methods: [:as_director, :as_producer, :as_actor_actress, :full_name, :tag_names]) }
    end
  end
end
