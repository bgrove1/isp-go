class InStorePromoter < ApplicationRecord
  has_many :isp_shifts

  scope :visible, lambda{where(:visible => true)}
  scope :invisible, lambda{where(:visible => false)}
  scope :sorted, lambda{order("lastname ASC")}
  scope :newest_first, lambda{order("created_at DESC")}
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}"])}

end
