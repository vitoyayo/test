# frozen_string_literal: true

class UserBlueprint < Blueprinter::Base
  identifier :id
  view :index do
    field :full_name do |user|
      "#{user.first_name} #{user.last_name}"
    end
    field :age
  end
  view :show_app do
    field :full_name do |user|
      "#{user.first_name} #{user.last_name}"
    end
    field :user do |user| 
     # user.apps.each do |app| 
        AppBlueprint.render_as_json(user.apps, view: :index)
      #end
    end
  end
end
