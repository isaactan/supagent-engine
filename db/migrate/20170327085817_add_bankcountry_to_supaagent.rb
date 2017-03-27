class AddBankcountryToSupaagent < ActiveRecord::Migration
  def change
    add_column :supaagents, :fieldname, :string
  end
end
