# frozen_string_literal: true

class UserBlueprint < Blueprinter::Base
  identifier :id
  view :index do
    field :full_name do |user|
      "#{user.first_name} #{user.last_name}"
    end
    field :age
  end
  view :show do
  end
end
