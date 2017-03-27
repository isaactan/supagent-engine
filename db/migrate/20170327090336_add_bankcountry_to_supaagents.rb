class AddBankcountryToSupaagents < ActiveRecord::Migration
  def change
    add_column :supaagents, :bankcountry, :string
  end
end
