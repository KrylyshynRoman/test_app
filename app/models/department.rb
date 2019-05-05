class Department < ActiveRecord::Base
  has_many :employee
  validates :name, presence: true
  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
