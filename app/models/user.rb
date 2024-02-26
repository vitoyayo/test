# frozen_string_literal: true

class User < ApplicationRecord

  validates :first_name, presence: true # valida que un campo de la tabla no sea vacio
  has_many :app, dependent: :destroy # hacemos que permita nil

  def self.search(first_name)
    where(first_name:)
  end
end
