class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age, :prefecture, :genre

  with_options presence: true do
    with_options numericality: { other_than: 1 } do
      validates :age_id, :prefecture_id, :genre_id
    end

    validates :address, :image
  end
end
