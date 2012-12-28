class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :heading
      t.text :content

      t.timestamps
    end
  end
end
