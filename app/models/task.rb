class Task < ApplicationRecord
  before_save :normalize_status

  validates :title, presence: true
  validates :status, presence: true

  def normalize_status
    self.status = status&.downcase
  end
end
