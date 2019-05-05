class Park < ActiveRecord::Base
  has_many :ranger
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }

  def self.banana

  end

  def foobar
    "hello and stuff"
  end
end
