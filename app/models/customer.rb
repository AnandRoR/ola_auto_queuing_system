class Customer < User
  has_many :requests, foreign_key: "user_id"
end