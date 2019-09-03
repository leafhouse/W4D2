# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint           not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           not null
#

class CatRentalRequest < ApplicationRecord
  validates :status, inclusion: ['PENDING', 'APPROVED', 'DENIED'], presence: true
  validates :cat_id, presence: true
  dependent: :destroy

  belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat

  def overlapping_requests
    
  end

end
