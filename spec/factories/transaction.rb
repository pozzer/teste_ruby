FactoryBot.define do
  factory :transaction do
    kind 1
    occurrence_at { DateTime.parse("2018-10-10 10:00:000") }
    value 154.0
    cpf "67196213009"
    card_number "1234****6678"
  end
end
