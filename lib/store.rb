class Store < ActiveRecord::Base
  has_many :employees
  belongs_to :store
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  validate :mens_or_womens_apparel

  def mens_or_womens_apparel
    if :mens_apparel == 0 && :womens_apparel == 0
      errors.add(:mens_apparel, "store needs to be either mens or womens" )
    end
  end
end
