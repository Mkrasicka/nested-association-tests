class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def uuid
    SecureRandom.hex(6)
  end
end
