class App < ApplicationRecord
        belongs_to :User, optional: true #pertenece a User
        validates :name, presence: true #aqui tambien podriamos validar
end
