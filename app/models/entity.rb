# app/models/entity.rb
class Entity < ApplicationRecord
    has_one_attached :cover_image
    validates :name, :entity_type, :description, presence: true
  end
  