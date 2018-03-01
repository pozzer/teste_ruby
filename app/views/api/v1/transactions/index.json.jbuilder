json.total_count @transactions.size
json.incomplete_results false
json.items do
  json.array! @transactions do |transaction|
    json.kind transaction.kind
    json.occurrence_at transaction.occurrence_at
    json.value transaction.value
    json.cpf transaction.cpf
    json.card_number transaction.card_number
  end
end
