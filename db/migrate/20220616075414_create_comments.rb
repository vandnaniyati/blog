class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :commentbox

      t.timestamps
    end
    add_column :comments, :post_id, :integer
  end
end
