class Api::V1::TransactionsController < Api::ApiController
  before_action :authenticate
  respond_to :json


  api :GET, '/v1/transactions/', "[Private] This is the index view for all transactions"
  error 401, "Unauthorized"
  description 'Get all transactions'
  formats [:json]
  meta :author => {:name => 'Feliphe', :surname => 'Pozzer'}
  example <<-EOS
  {
    "total_count": 1 ,
    "incomplete_results": false,
    "items":
      [
        {
          "id":15,
          "kind":"debit",
          "occurrence_at":null,
          "value":null,
          "cpf":null,
          "card_number":null}
      ]
  }
  EOS
  def index
    @transactions = Transaction.all
    respond_with @transactions
  end
end
