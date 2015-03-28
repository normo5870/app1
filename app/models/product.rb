class Product < ActiveRecord::Base
    self.table_name = 'Products'
    self.primary_key = :ProductKey

    belongs_to :brand, :class_name => 'Brand', :foreign_key => :BrandKey
    belongs_to :category, :class_name => 'Category', :foreign_key => :CategoryKey
    belongs_to :vendor, :class_name => 'Vendor', :foreign_key => :VendorKey
    belongs_to :vendor, :class_name => 'Vendor', :foreign_key => :VendorKey
    belongs_to :vendor, :class_name => 'Vendor', :foreign_key => :VendorKey
    belongs_to :vendor, :class_name => 'Vendor', :foreign_key => :VendorKey
    has_many :purchasehistories, :class_name => 'PurchaseHistory', :foreign_key => :ProductKey
end
