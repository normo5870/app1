class User < ActiveRecord::Base
    self.table_name = 'User'
    self.primary_key = :UserKey

    has_many :purchasehistories, :class_name => 'PurchaseHistory', :foreign_key => :UserKey
    belongs_to :role, :class_name => 'Role', :foreign_key => :RoleKey
    belongs_to :vendor, :class_name => 'Vendor', :foreign_key => :VendorKey
    belongs_to :vendor, :class_name => 'Vendor', :foreign_key => :VendorKey
    belongs_to :vendor, :class_name => 'Vendor', :foreign_key => :VendorKey
    belongs_to :vendor, :class_name => 'Vendor', :foreign_key => :VendorKey
end
