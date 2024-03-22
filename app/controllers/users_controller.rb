# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :get_users, only: [:search, :app, :index]

  def index
    #users = UserBlueprint.render User.all, view: :index
    render json: get_serializer(UserBlueprint, :index, User.all), status: :ok
  end

  def index2
    users = User.all.map do |user| # user es un modelo
      {
        id: user.id,
        full_name: "#{user.first_name} #{user.last_name}",
        age: user.age
      }
    end
    render json: users, status: :ok
  end

  def search
    @users = @users.search(params[:first_name])
    render json: @users, status: :ok
  end

  def app
      @users = @users.search(params[:first_name])
      render json: get_serializer(UserBlueprint, :show_app, @users), status: :ok
  end

  private

  def get_serializer(serializer, view, scope)

    serializer.render scope, view: view

  end

  def get_users
    @users = User.all
  end

end
