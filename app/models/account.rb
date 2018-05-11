class Account < ApplicationRecord
	has_many :orders, :dependent => :destroy
	has_many :products, :dependent => :destroy
	has_many :contests, :dependent => :destroy

	validates_presence_of :shopify_account_url
    validates_presence_of :shopify_shop_name
	validates_presence_of :shopify_password
	#validates_presence_of :shopify_shared_secret
end
