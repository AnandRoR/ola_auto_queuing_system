class Request < ApplicationRecord
  enum status: [:waiting, :ongoing, :complete]
  belongs_to :customer, class_name: "User"
  belongs_to :driver
end
