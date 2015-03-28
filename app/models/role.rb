class Role < ActiveRecord::Base
    self.table_name = 'Role'
    self.primary_key = :RoleKey

    has_many :users, :class_name => 'User', :foreign_key => :RoleKey
end
