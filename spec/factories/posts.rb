FactoryGirl.define do
  factory :post do
    title 'Sample title'
    description 'lorem ipsum dolor sit amet consetetur sadipscing elitr sed diam nonumy'
    post_date { rand(100).days.ago }
    published true

    factory :unpublished_post do
      published false
    end
  end
end
