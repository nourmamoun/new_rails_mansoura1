class CreateEditorships < ActiveRecord::Migration[8.0]
  def change
    create_table :editorships do |t|
      t.references :post, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
