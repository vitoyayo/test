class UsersController < ApplicationController

  def index
    users = UserBlueprint.render User.all, view: :index
    render json: users, status: :ok
  end

  def index2
    users = User.all.map do |user|
        {
          id: user.id,
          first_name: user.first_name,
          last_name: user.last_name,
          age: user.age
        }
      end
      render json: users, status: :ok
    end
  end
