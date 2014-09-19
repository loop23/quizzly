class Answer < ActiveRecord::Base

  belongs_to :quiz
  validates_text presence: true

end
