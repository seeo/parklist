class Ranger < ActiveRecord::Base
  belongs_to :park

  def say_something
    "yo whats up"
  end
end
