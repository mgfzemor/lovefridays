class RemoveRatingCommentColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :ratings, :comment
  end
end
