class Product < ApplicationRecord
    validates :name, presence: true
    validates :desciption, presence: true
    validates :price_in_cents, presence: true
    validates :url, presence: true
end
