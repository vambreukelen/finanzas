class Income < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    descripcion :string, :name => true
    cantidad    :decimal
    fecha       :date
    timestamps
  end
  attr_accessible :descripcion, :cantidad, :fecha, :category, :category_id
  belongs_to :category

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
