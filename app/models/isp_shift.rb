class IspShift < ApplicationRecord

  before_save :calculate_leads_per_hour

  belongs_to :in_store_promoter

  scope :sorted, lambda{order("created_at DESC")}

  def calculate_leads_per_hour
      self.leads_per_hour = self.leads/((self.time_out-self.time_in)/3600)
  end
  
end
