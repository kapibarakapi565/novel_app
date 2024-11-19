class Novel < ApplicationRecord
  validates :title, :main_text, presence: true
end

