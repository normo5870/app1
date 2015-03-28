class PurchaseHistory < ActiveRecord::Base
    self.table_name = 'PurchaseHistory'
    self.primary_key = :PurchaseKey

    belongs_to :product, :class_name => 'Product', :foreign_key => :ProductKey
    belongs_to :user, :class_name => 'User', :foreign_key => :UserKey
end
