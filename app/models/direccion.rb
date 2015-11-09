class Direccion < ActiveRecord::Base
  belongs_to :usuarios

  validates :calle, presence: true
  validates :numero, presence: true
  validates :pais, presence: true

  scope :recientes, ->{order("created_at desc")}
end
