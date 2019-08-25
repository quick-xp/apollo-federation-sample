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

require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
