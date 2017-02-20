class AddBanknameToSupaagent < ActiveRecord::Migration
  def change
    add_column :supaagents, :bankname, :string
  end
end
