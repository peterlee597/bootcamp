class Article < ApplicationRecord
    belongs_to :author
    belongs_to :category, optional: false
    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
  end
  