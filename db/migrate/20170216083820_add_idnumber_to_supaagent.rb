class AddIdnumberToSupaagent < ActiveRecord::Migration
  def change
    add_column :supaagents, :idnumber, :string
  end
end
