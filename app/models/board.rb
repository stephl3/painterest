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

  validates :title, presence: { message: "Don't forget to name your board!" }
  validates :secret, :inclusion => { :in => [true, false] }
  validates :user_id, presence: true

  belongs_to :user

  has_many :boards_pins,
    class_name: :BoardsPins,
    foreign_key: :board_id,
    dependent: :destroy
    
  has_many :pins,
    through: :boards_pins,
    source: :pin,
    dependent: :destroy

end
