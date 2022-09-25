class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '朝食' },
    { id: 3, name: 'Wi-Fi' },
    { id: 4, name: '敷地内無料駐車場'},
    { id: 5, name: '禁煙部屋' },
    { id: 6, name: '喫煙部屋' },
    { id: 7, name: 'テレビ' },
    { id: 8, name: '洗濯機' },
    { id: 9, name: '冷蔵庫' },
    { id: 10, name: 'エアコン' },
    { id: 11, name: '床暖房' },
    { id: 12, name: 'ヘアドライヤー' },
    { id: 13, name: '必需品（タオル、シーツ等）' },
    { id: 14, name: 'ボディソープ、シャンプー' },
    { id: 15, name: '露天風呂・ジャグジー' },
    { id: 16, name: '敷地内に防犯カメラあり' }
  ]

  include ActiveHash::Associations
  has_many :reservations

  end
