class HoboMigration2 < ActiveRecord::Migration
  def self.up
    remove_column :incomes, :category_id

    remove_column :expenses, :category_id

    remove_index :incomes, :name => :index_incomes_on_category_id rescue ActiveRecord::StatementInvalid

    remove_index :expenses, :name => :index_expenses_on_category_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    add_column :incomes, :category_id, :integer

    add_column :expenses, :category_id, :integer

    add_index :incomes, [:category_id]

    add_index :expenses, [:category_id]
  end
end
