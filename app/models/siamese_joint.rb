class SiameseJoint < ActiveRecord::Base
  belongs_to(
    :body,
    class_name: "Body",
    foreign_key: :body_id,
    primary_key: :id
  )

  belongs_to(
    :leg,
    class_name: "Leg",
    foreign_key: :leg_id,
    primary_key: :id
  )
end
