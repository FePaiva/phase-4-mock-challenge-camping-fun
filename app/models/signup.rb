class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity
  validates :time, inclusion: {in: 0..23}


  def index
    render json: Signup.all
  end




end
