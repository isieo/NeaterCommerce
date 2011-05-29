class Address < ActiveRecord::Base
  has_one :country
  has_one :address
  has_one :state
  belongs_to :user
  
  def save(*args)
    self.state_name = State.find(self.state_id).name if self.state_id != nil
    super(*args)
  end
end
