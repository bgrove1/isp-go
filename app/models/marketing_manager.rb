class MarketingManager < ApplicationRecord

  has_secure_password

  has_many :in_store_promoters
  has_many :territories

  scope :visible, lambda{where(:visible => true)}
  scope :invisible, lambda{where(:visible => false)}
  scope :sorted, lambda{order("name ASC")}
  scope :newest_first, lambda{order("created_at DESC")}
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}"])}

  def calculate_leads_per_hour
    leads_per_hour = self.in_store_promoters.map(&:leads_per_hour)
    return 0 if leads_per_hour.empty?

    total_leads_per_hour = leads_per_hour.inject(0){|sum, x| sum + x}

    (total_leads_per_hour.to_f/leads_per_hour.size).round(2)

    self.leads_per_hour = (total_leads_per_hour.to_f/leads_per_hour.size).round(2)
    self.save
    return self.leads_per_hour
  end

end
