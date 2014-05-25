class Leg < ActiveRecord::Base
  has_one(
    :foot,
    class_name: "Foot",
    foreign_key: :leg_id,
    primary_key: :id
  )

  has_many(
    :siamese_joint,
    class_name: "SiameseJoint",
    foreign_key: :leg_id,
    primary_key: :id
  )

  has_many :bodies, through: :siamese_joint, source: :body

  has_many :toes, through: :foot, source: :toes
end
