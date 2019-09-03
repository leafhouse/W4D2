# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  COLORS = ['black', 'blue', 'red', 'green', 'white', 'orange', 'brown', 'gray']
  validates :color, inclusion: COLORS, presence: true
  
  SEX = ['M', 'F']
  validates :sex, inclusion: SEX, presence: true
  
  TODAY = Date::today(Date::ITALY)

  def age
    days = (TODAY - birth_date).to_i + 1
    days / 365
  end

  has_many :rental_requests,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest


end
