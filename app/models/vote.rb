class Vote < ActiveRecord::Base
  belongs_to :user, validate: true
  belongs_to :link, validate: true
end