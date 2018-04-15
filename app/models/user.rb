class User < ApplicationRecord
  scope :drivers, -> { where(type: "Driver") }
  scope :customers, -> { where(type: "Customer") }
end
