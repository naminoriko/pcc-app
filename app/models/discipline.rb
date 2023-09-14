class Discipline < ActiveHash::Base
 self.data = [
  { id: 1, name: '---' },
  { id: 2, name: 'フルーレ' },
  { id: 3, name: 'エペ' },
  { id: 4, name: 'サーブル' },
  { id: 5, name: 'フルーレ、エペ' },
  { id: 6, name: 'フルーレ、サーブル' },
  { id: 7, name: 'エペ、サーブル' },
  { id: 8, name: 'フルーレ、エペ、サーブル' },
]

include ActiveHash::Associations
has_many :users

end
