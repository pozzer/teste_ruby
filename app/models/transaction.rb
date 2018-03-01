class Transaction < ApplicationRecord
  validates :kind, inclusion: { in: [1, 4] }
  validates :occurrence_at, :kind, :cpf, :card_number, :presence => true

  def self.create_by_file(file)
    File.read(file).split("\n").map{|l| create(Parser.new(l).output) }
  end

end
