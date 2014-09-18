json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :subject, :question, :image_url
  json.url quiz_url(quiz, format: :json)
end
