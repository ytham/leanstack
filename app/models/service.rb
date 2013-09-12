class Service < ActiveRecord::Base

  attr_accessible :name, :imageUrl, :description

  belongs_to :cluster
  belongs_to :stackup

end
