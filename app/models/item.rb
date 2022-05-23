class Item < ApplicationRecord
    has_many :stocks, dependent: :destroy
    has_many :locations, through: :stocks
end
