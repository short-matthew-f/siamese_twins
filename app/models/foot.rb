class Foot < ActiveRecord::Base
  has_many(
    :toes,
    class_name: "Toe",
    foreign_key: :foot_id,
    primary_key: :id
  )

  belongs_to(
    :leg,
    class_name: "Leg",
    foreign_key: :leg_id,
    primary_key: :id
  )

  delegate :bodies, to: :leg, allow_nil: :true
end
