class IspShift < ApplicationRecord

  before_save :calculate_leads_per_hour

  belongs_to :in_store_promoter
  belongs_to :store

  scope :sorted, lambda{order("created_at DESC")}

  def calculate_leads_per_hour
      self.leads_per_hour = self.leads/((self.time_out-self.time_in)/3600)
  end

  def hours_per_lead
    self.calculate_leads_per_hour
    if self.leads_per_hour == 0
      return ("No leads")
    else
      return (1/(self.leads_per_hour)).round(2)
    end
  end

end
