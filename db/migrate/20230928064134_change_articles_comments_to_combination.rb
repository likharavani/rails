class ChangeArticlesCommentsToCombination < ActiveRecord::Migration[7.0]
  def change
    rename_table :articles_comments, :combinations
  end
end
