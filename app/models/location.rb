class Location < ApplicationRecord
    has_many :stocks, dependent: :destroy
    has_many :items, through: :stocks
end
