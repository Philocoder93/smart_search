class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.float :score
      t.references :user, index: true, foreign_key: true
      t.references :search, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
      t.timestamps
    end
  end
end
