class Owner < ApplicationRecord
    has_many :dogs, dependent: :destroy
  
    validates :name, :email, :phone, :city, presence: true
    validates :email, uniqueness: true
  end
  