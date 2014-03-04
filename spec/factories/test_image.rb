# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :test_image, class: NoCms::Pages::Page do
    name { Faker::Lorem.sentence }
    logo { File.open('spec/fixtures/images/logo.png') }
  end
end
