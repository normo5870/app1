class Category < ActiveRecord::Base
    self.table_name = 'Category'
    self.primary_key = :CategoryKey

    has_many :products, :class_name => 'Product', :foreign_key => :CategoryKey
end
