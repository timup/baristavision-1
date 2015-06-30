class CreateTablets < ActiveRecord::Migration
  def change
    create_table :tablets do |t|
      t.string :name
      t.string :merchant_id
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
