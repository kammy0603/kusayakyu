class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '19歳以下' },
    { id: 3, name: '20-29歳' },
    { id: 4, name: '30-39歳' },
    { id: 5, name: '40-49歳' },
    { id: 6, name: '50-59歳' },
    { id: 7, name: '60歳以上' }
  ]
  include ActiveHash::Associations
  has_many :teams
end
