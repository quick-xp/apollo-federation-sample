# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  upc        :string(255)
#  name       :string(255)
#  price      :integer
#  weight     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
end
