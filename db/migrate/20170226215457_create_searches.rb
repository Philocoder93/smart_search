class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :search_terms
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
