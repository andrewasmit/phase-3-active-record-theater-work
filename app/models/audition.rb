class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    self.hired = true
  end

end