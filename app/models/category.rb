class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'キャンプ' },
    { id: 3, name: 'グランピング' },
    { id: 4, name: '釣り（川・湖）' },
    { id: 5, name: '釣り（海）' },
    { id: 6, name: '登山' },
    { id: 7, name: 'ハイキング' },
    { id: 8, name: 'ロッククライミング' },
    { id: 9, name: 'パラグライダー' },
    { id: 10, name: 'カヌー' },
    { id: 11, name: 'サーフィン' },
    { id: 12, name: 'シュノーケリング' },
    { id: 13, name: 'ウェイクボード' },
    { id: 14, name: 'セグウェイ' },
    { id: 15, name: '乗馬' },
    { id: 16, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :reservations
  
  end
