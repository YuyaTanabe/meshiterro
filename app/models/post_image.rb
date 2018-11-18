class PostImage < ApplicationRecord

  belongs_to :user
  attachment :image # 画像アップロードに関して<%= f.attachment_field :image %>を実装するため追加
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :shop_name, presence: true
  validates :image, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
