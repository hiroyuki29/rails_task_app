class Task < ApplicationRecord
    default_scope -> { order(start_day: :asc) }
    validates :title, presence: true
    validates :start_day, presence: true
    validates :end_day, presence: true
    validates :memo, length: { in: 1..100 }
end
