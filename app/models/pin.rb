# == Schema Information
#
# Table name: pins
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  url         :string
#

class Pin < ApplicationRecord

  validates :user_id, :photo, presence: true
  
  belongs_to :user

  has_many :boards_pins,
    class_name: :BoardsPins,
    foreign_key: :pin_id,
    dependent: :destroy

  has_many :boards,
    through: :boards_pins,
    source: :board

  has_one_attached :photo

end
