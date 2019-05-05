class Employee < ActiveRecord::Base
  belongs_to :department
  validates :name, presence: true
  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
