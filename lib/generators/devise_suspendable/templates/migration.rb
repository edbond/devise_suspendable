class DeviseAddSuspendable<%= table_name.camelize.singularize %> < ActiveRecord::Migration
  def self.up
    add_column :<%= table_name %>, :suspended_at,      :datetime,  :null => true, :default => nil
    add_column :<%= table_name %>, :suspension_reason, :string,    :null => true, :default => nil
  end
  
  def self.down
    remove_column :<%= table_name %>, :suspended_at
    remove_column :<%= table_name %>, :suspension_reason
  end
end