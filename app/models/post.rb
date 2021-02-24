class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age
  belongs_to :prefecture
  belongs_to :genre

  with_options presence: true do
    with_options numericality: { other_than: 1 } do
      validates :age_id, :prefecture_id, :genre_id
    end

    validates :address, :image
  end

  def self.search(search)
    if search != ''
      Post.where('text LIKE(?)', "%#{search}%")
          .or(Post.where('address LIKE(?)', "%#{search}%"))
    else
      Post.all
    end
  end
end
