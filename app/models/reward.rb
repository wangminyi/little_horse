class Reward < ApplicationRecord
  enumerize :reward_type, in: [
    "集体",
    "个人",
  ], scope: true

  mount_uploader :file, RewardUploader
end
