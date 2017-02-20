class RenameColumnbankacountinTablesupaagenttobankaccount < ActiveRecord::Migration
  def change
    rename_column :supaagents, :bankacountnumber, :bankaccount
  end
end
