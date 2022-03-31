FactoryBot.define do
  factory :comment do
    content { "AZERTYUIOP10" }

    factory :comment_empty do
      content { '' }
    end
  end
end
