class Employee < ActiveRecord::Base
  belongs_to :department
  validates :name, presence: true
  validates :department_id, presence: true
  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
