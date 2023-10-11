class RenameTableArticlesComments < ActiveRecord::Migration[7.0]
  def change
    rename_table :articles_comments, :article_comments
  end
end
