class AddBankaccoutnumberToSupaagent < ActiveRecord::Migration
  def change
    add_column :supaagents, :bankacountnumber, :string
  end
end
