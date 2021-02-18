class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: ' 10歳未満 ' },
    { id: 3, name: ' 10代前半 ' },
    { id: 4, name: ' 10代後半 ' },
    { id: 5, name: ' 20代前半 ' },
    { id: 6, name: ' 20代後半 ' },
    { id: 7, name: ' 30代 ' },
    { id: 8, name: ' 40代 ' },
    { id: 9, name: ' 50代 ' },
    { id: 10, name: ' 60代以上 ' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
