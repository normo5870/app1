class Brand < ActiveRecord::Base
    self.table_name = 'Brand'
    self.primary_key = :BrandKey

    has_many :products, :class_name => 'Product', :foreign_key => :BrandKey
end
