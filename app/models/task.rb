class Task < ApplicationRecord
  before_save :normalize_status

  def normalize_status
    self.status = status&.downcase
  end
end
