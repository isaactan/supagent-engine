class RenameColumnbankacountinTablesupaagenttobankaccount < ActiveRecord::Migration
  def change
    rename_column :Supaagents, :bankacountnumber, :bankaccount
  end
end
