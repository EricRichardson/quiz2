class Request < ActiveRecord::Base

  scope :search, -> (term) { where("name LIKE :term OR email LIKE :term OR department LIKE :term OR message LIKE :term", {term: "%#{term}%"})}
end
