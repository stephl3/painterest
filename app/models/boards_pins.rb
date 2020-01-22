# == Schema Information
#
# Table name: boards_pins
#
#  id         :bigint(8)        not null, primary key
#  pin_id     :integer          not null
#  board_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BoardsPins < ApplicationRecord

  validates :board_id, :pin_id, presence: true
  # validates :board_id, uniqueness: { scope: :pin_id,
  #   message: "Psst! You already saved this Pin to this Board" }
    
  belongs_to :pin
  belongs_to :board

end
