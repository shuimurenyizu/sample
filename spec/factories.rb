FactoryGirl.define do
	factory :user do
		name 										"Micheal Martl"	
		email										"micheal@example.com"
		password								"foobar"
		password_confirmation 	"foobar"
	end
end