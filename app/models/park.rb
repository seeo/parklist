class Park < ActiveRecord::Base
  has_many :ranger
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
  validate :has_one_ranger_at_least
  def self.banana

  end

  def foobar
    "hello and stuff"
  end
end
