class Lesson < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :lesson_words, dependent: :destroy
  has_many :word_answers, through: :lesson_words, dependent: :destroy
  has_many :words, through: :lesson_words, dependent: :destroy
end
