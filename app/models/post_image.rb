class PostImage < ApplicationRecord

  belongs_to :user
  attachment :image # 画像アップロードに関して<%= f.attachment_field :image %>を実装するため追加
end
