class Film < ApplicationRecord
  validates :user_id, {presence: true}

  belongs_to :user

  def user
    return FIlm.find_by(id: self.id)
  end


end
