class Jobapp < ApplicationRecord
    belongs_to :user
    belongs_to :job

    has_one_attached :photo
end
