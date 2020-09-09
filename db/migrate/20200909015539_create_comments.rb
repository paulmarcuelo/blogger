class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :authore_name
      t.text :body
      t.references :article, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
