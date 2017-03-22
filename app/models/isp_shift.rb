class IspShift < ApplicationRecord
  belongs_to :in_store_promoter

  scope :sorted, lambda{order("created_at DESC")}
end
