class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: ' インスタ映え ' },
    { id: 3, name: ' 高級 ' },
    { id: 4, name: ' 安価 ' },
    { id: 5, name: ' 食べ歩き ' },
    { id: 6, name: ' 和風 ' },
    { id: 7, name: ' 洋風 ' },
    { id: 8, name: ' 中華 ' },
    { id: 9, name: ' 居酒屋・バー ' },
    { id: 10, name: ' 多国籍料理 ' },
    { id: 11, name: ' 郷土料理 ' },
    { id: 12, name: ' キッズ ' },
    { id: 13, name: ' その他 ' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
