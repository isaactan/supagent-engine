class AddBankaddressToSupaagent < ActiveRecord::Migration
  def change
    add_column :supaagents, :bankaddress, :string
  end
end
