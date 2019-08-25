# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  auther_id   :integer
#  product_upc :string(255)
#  score       :decimal(10, )
#  body        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Review < ApplicationRecord
end
