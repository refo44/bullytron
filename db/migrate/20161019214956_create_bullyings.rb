class CreateBullyings < ActiveRecord::Migration[5.0]
  def change
    create_table :bullyings do |t|
      t.references :bully, foreign_key: true
      t.references :bulled, foreign_key: true
      t.text :decription
      t.boolean :the_best

      t.timestamps
    end
  end
end
