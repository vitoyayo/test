# frozen_string_literal: true

class User < ApplicationRecord
  def self.search(first_name)
    where(first_name:)
  end
end
