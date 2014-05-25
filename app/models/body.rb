class Body < ActiveRecord::Base
  has_many(
    :siamese_joints,
    class_name: "SiameseJoint",
    foreign_key: :body_id,
    primary_key: :id
    )

  has_many :legs, through: :siamese_joints, source: :leg

  has_many :feet, through: :legs, source: :foot

  has_many :toes, through: :feet, source: :toes
end
