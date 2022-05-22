class Item < ApplicationRecord
    has_many :stocks
    has_many :locations, through: :stocks
end
