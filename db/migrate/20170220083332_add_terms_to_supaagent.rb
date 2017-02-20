class AddTermsToSupaagent < ActiveRecord::Migration
  def change
    add_column :supaagents, :terms, :boolean
  end
end
