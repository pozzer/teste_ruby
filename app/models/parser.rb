class Parser
  def initialize(arg="")
    @string = arg
  end

  def output
    { kind: kind,
      occurrence_at: convert_date(occurrence_at),
      value: format_value(value),
      cpf: cpf,
      card_number: card_number }
  end

  def kind
    @string[0]
  end

  def occurrence_at
    "#{@string[1..8]} #{@string[42..47]}"
  end

  def value
    @string[9..18]
  end

  def cpf
    @string[19..29]
  end

  def card_number
    @string[30..41]
  end

  private

  def convert_date(date)
    begin
      date.to_time.utc
    rescue
    end
  end

  def format_value(value)
    value.to_f / 100
  end

end
