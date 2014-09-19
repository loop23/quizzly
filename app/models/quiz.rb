class Quiz < ActiveRecord::Base

  has_many :answers

  validates_subject presence: true
  validates_question presence: true
  
end
