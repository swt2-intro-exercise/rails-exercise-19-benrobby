FactoryBot.define do
  factory :paper do
    title { 'COMPUTING MACHINERY AND INTELLIGENCE' }
    venue { 'Mind 49: 433-460' }
    year { 1950 }
    authors { build_list :author, 1 }

    trait :paper1 do
      year { 1968 }
    end

  end
end