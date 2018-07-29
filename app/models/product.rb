class Product < ApplicationRecord
  has_many :variants, -> { where('stock > 0') }, dependent: :destroy
  has_one_attached :image
  accepts_nested_attributes_for :variants
  before_destroy :remove_product_variants
  
  def remove_product_variants
  	Variant.where(product_id: id).destroy_all
	end
	
  # TODO
  # add validations
  def to_param
    name
  end
end
