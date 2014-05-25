class Toe < ActiveRecord::Base
  belongs_to(
    :foot,
    class_name: "Foot",
    foreign_key: :foot_id,
    primary_key: :id
  )

  delegate :leg, to: :foot, allow_nil: true

  delegate :bodies, to: :leg, allow_nil: true
end
