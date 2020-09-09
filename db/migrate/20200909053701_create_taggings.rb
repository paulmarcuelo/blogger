class CreateTaggings < ActiveRecord::Migration[6.0]
  def change
    create_table :taggings do |t|
      t.references :tag, null: false, foreign_key: {on_delete: :cascade}
      t.references :article, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
