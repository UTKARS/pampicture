class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :pst, :precision => 5, :scale => 4
      t.decimal :gst, :precision => 5, :scale => 4
      t.decimal :hst, :precision => 5, :scale => 4

      t.timestamps
    end
  end
end
