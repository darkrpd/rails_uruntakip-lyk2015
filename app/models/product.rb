class Product < ActiveRecord::Base

  has_one :user , dependent: :destroy

  validates :title , length: { in: 5..30  }
  validates :description, length: { maximum: 300 }
  validates :price , numericality: {greater_than_or_equal_to: 0.0}


end
