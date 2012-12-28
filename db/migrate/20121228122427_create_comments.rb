class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :comment
      t.string :user_email
      t.references :article

      t.timestamps
    end
    add_index :comments, :article_id
  end
end
