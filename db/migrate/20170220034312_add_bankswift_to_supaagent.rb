class AddBankswiftToSupaagent < ActiveRecord::Migration
  def change
    add_column :supaagents, :bankswift, :string
  end
end
