class CreateSupaagents < ActiveRecord::Migration
  def change
    create_table :supaagents do |t|
      t.string :applicationid
      t.string :name
      t.string :email
      t.string :idimage
      t.boolean :validation

      t.timestamps null: false
    end
  end
end
