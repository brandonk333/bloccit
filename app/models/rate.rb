class Rate < ActiveRecord::Base
  belongs_to :ratelings, polymorphic: true
  
    
  enum severity: [ :PG, :PG13, :R ]
end

