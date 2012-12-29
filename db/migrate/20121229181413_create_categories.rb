class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :article

      t.timestamps
    end
    add_index :categories, :article_id
  end
end
