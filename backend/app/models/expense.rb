class Expense < ApplicationRecord
  belongs_to :category
  before_create :set_default_payer_name
  
  private
  
  def set_default_payer_name
    self.payer_name ||= 'User'
  end
end
