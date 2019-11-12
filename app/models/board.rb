# == Schema Information
#
# Table name: boards
#
#  id          :bigint(8)        not null, primary key
#  title       :string           not null
#  description :text
#  secret      :boolean          default(FALSE)
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Board < ApplicationRecord

  validates :title, :user_id, presence: true
  validates :secret, :inclusion => { :in => [true, false] }

  belongs_to :user
  has_many :boards_pins
  has_many :pins,
    through: :boards_pins,
    source: :pin

end
