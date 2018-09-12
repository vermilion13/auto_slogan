class Slogan < ApplicationRecord
    validates :slogan_text, presence: true
end
