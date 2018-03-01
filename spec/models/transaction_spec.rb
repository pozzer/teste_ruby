require 'rails_helper'

RSpec.describe Transaction, type: :model do

  describe "#validates" do
    it { should validate_presence_of(:occurrence_at) }
    it { should validate_presence_of(:kind) }
    it { should validate_presence_of(:cpf) }
    it { should validate_presence_of(:card_number) }
    it { should validate_inclusion_of(:kind).in_array([1, 4]) }
  end

  describe "#create_by_file" do
    it "return array of transactions" do
      expect(Transaction.create_by_file(File.join(Rails.root, 'lib','resources','CNAB.txt')).size).to eq(21)
    end
  end
end
