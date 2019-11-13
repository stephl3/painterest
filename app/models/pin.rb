# == Schema Information
#
# Table name: pins
#
#  id          :bigint(8)        not null, primary key
#  title       :string           not null
#  description :text
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  url         :string
#

class Pin < ApplicationRecord

  validates :title, :url, :user_id, :photo, presence: true
  
  belongs_to :user

  has_many :boards_pins,
    dependent: :destroy

  has_many :boards,
    through: :boards_pins,
    source: :board

  has_one_attached :photo

end
