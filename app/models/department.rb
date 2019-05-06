class Department < ActiveRecord::Base
  has_many :employee, dependent: :destroy
  validates :name, presence: true
  end
