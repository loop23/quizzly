class Answer < ActiveRecord::Base

  belongs_to :quiz
  validate :text, presence: true

end
