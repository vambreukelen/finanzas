class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :incomes do |t|
      t.string   :descripcion
      t.decimal  :cantidad
      t.date     :fecha
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :category_id
    end
    add_index :incomes, [:category_id]

    create_table :categories do |t|
      t.string   :nombre
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :expenses do |t|
      t.string   :descripcion
      t.decimal  :cantidad
      t.date     :fecha
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :category_id
    end
    add_index :expenses, [:category_id]
  end

  def self.down
    drop_table :incomes
    drop_table :categories
    drop_table :expenses
  end
end
