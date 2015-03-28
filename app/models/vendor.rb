class Vendor < ActiveRecord::Base
    self.table_name = 'Vendor'
    self.primary_key = :VendorKey

    has_many :products, :class_name => 'Product', :foreign_key => :VendorKey
    has_many :products, :class_name => 'Product', :foreign_key => :VendorKey
    has_many :products, :class_name => 'Product', :foreign_key => :VendorKey
    has_many :products, :class_name => 'Product', :foreign_key => :VendorKey
    has_many :users, :class_name => 'User', :foreign_key => :VendorKey
    has_many :users, :class_name => 'User', :foreign_key => :VendorKey
    has_many :users, :class_name => 'User', :foreign_key => :VendorKey
    has_many :users, :class_name => 'User', :foreign_key => :VendorKey
end
