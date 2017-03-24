class AddStatusToSupaagents < ActiveRecord::Migration
  def change
    add_column :supaagents, :status, :string
  end
end
