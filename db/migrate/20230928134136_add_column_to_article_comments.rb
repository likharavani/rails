class AddColumnToArticleComments < ActiveRecord::Migration[7.0]
  def change
    add_column :article_comments, :color, :string
  end
end
