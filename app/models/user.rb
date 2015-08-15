class User < ActiveRecord::Base
  ##has_one :product , foreign_key: 'product_id', dependent: :destroy
  has_many :product , dependent: :destroy

  validates :username ,presence: true, length: { in: 6..20,message: "username"  }
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/ ,
  message: "only emails"}
  validates :age , presence: true, numericality: { greater_than_or_equal_to: 0 ,message:"age"}
  validates :city, presence: true

end
