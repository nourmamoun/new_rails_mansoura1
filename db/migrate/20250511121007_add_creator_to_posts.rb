class AddCreatorToPosts < ActiveRecord::Migration[8.0]
  def change
    add_reference :posts, :creator, foreign_key: { to_table: :users }
  end
end
