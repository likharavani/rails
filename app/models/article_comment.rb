class ArticleComment < ApplicationRecord
     validates :name,:age, presence: true
    # validates :article_id,uniqueness: true
    # validates :comment_id,uniqueness: true
    validates :article_id,:comment_id, uniqueness :true
end
