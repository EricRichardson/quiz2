class Request < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :message, presence: true

  scope :search, -> (term) { where("name LIKE :term OR email LIKE :term OR department LIKE :term OR message LIKE :term", {term: "%#{term}%"})}
end
