class Price
	def initialize(brand, refrence, product)
		@brand = brand
		@refrence = refrence
		@product = product
	end
	def set_price_original(scaler, rate_type)
		@price_suggestion = (@reference - @product.shipping_cost * scaler) * rate_type
		@price_original = @price_suggestion
	end
	def calculate_suggestion_price(rate_type)
		if @reference < 15
			set_price_original(0.75, rate_type)
		elsif @reference < 25
			set_price_original(0.775, rate_type)
		elsif @reference < 50
			set_price_original(0.8, rate_type)
		elsif @reference < 75
			set_price_original(0.825, rate_type)
		elsif @reference < 100
			set_price_original(0.85, rate_type)
		elsif @reference < 200
			set_price_original(0.875, rate_type)
		elsif @reference < 400
			set_price_original(0.9, rate_type)
		elsif @reference < 600
			set_price_original(0.925, rate_type)
		end
	end
	def calculate_price
		if @brand.rating = high
				calculate_suggestion_price(1.1)			
		elsif @brand.rating = low
				calculate_suggestion_price(0.9)
		else
			calculate_suggestion_price(1)
		end
	end
end
