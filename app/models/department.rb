class Department < ActiveRecord::Base
  has_many :employee
  validates :name, presence: true
  end
