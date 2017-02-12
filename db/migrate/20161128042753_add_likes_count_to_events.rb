class AddLikesCountToEvents < ActiveRecord::Migration
  def change
    add_column :events, :likes_count, :integer
  end
end
