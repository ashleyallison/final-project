# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  name            :string
#  brand           :string
#  expiration_date :date
#  product_type    :string
#  owner_id        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Product < ApplicationRecord
    
belongs_to :owner, :class_name => "User"

end
