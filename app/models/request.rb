class Request < ApplicationRecord
  enum status: [:waiting, :ongoing, :complete]
  belongs_to :customer, foreign_key: "user_id" 

  def self.complete_ongoing_trip
  	where(end_at: DateTime.now..DateTime.now + 1.minute).update_all(status: "complete")
  end
  def time_elapsed
  	waiting? ? created_at : start_at 
  end
end
