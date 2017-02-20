class AddBankbranchToSupaagent < ActiveRecord::Migration
  def change
    add_column :supaagents, :bankbranch, :string
  end
end
