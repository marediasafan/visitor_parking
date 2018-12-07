class Visitor < ApplicationRecord
  belongs_to :building

  # check monthly limits for a visitor
  def check_limits()

  end
end
