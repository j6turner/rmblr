class Ramble <ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true
  validates :time, presence: true
end
