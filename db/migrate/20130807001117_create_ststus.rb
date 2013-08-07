class CreateStstus < ActiveRecord::Migration
  def change
    create_table :ststus do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
