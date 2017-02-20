class AddReferralidToSupaagent < ActiveRecord::Migration
  def change
    add_column :supaagents, :referralid, :string
  end
end
