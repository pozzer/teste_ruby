require 'rails_helper'

RSpec.describe Parser, type: :model do

  let(:parser){ Parser.new("4201806010000015400671962130091234****6678100000") }

  describe ".output" do
    it "return hash with datas parsed " do
      expect(parser.output).to eq({
        :kind=>"4",
        :occurrence_at=>"2018-06-01 13:00:00.000000000 +0000",
        :value=>154.0,
        :cpf=>"67196213009",
        :card_number=>"1234****6678"
      })
    end
  end

  describe ".kind" do
    it "returns slice from 0 to 0" do
      expect(parser.kind).to eq("4")
    end
  end

  describe ".occurrence_at" do
    it "returns slice from 1 to 8" do
      expect(parser.occurrence_at).to eq("20180601 100000")
    end
  end

  describe ".value" do
    it "returns slice from 9 to 18" do
      expect(parser.value).to eq("0000015400")
    end
  end

  describe ".cpf" do
    it "returns slice from 19 to 29" do
      expect(parser.cpf).to eq("67196213009")
    end
  end

  describe ".card_number" do
    it "returns slice from 30 to 41" do
      expect(parser.card_number).to eq("1234****6678")
    end
  end

  describe ".format_value" do
    it "return float value divided per 100" do
      expect(parser.send('format_value',"1000")).to eq(10.0)
    end
  end

  describe ".convert_date" do
    context "if valid date" do
      it "return Time" do
        expect(parser.send('convert_date',"20180601 100000").class).to eq(Time)
      end

      it "return UTC time" do
        expect(parser.send('convert_date',"20180601 100000").to_s).to eq("2018-06-01 13:00:00 UTC")
      end
    end

    context "unless valid date" do
      it "return nil" do
        expect(parser.send('convert_date',"485734 1111111").class).to eq(NilClass)
      end
    end
  end

end
