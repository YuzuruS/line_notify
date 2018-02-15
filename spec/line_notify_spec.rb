RSpec.describe LineNotify do
  describe "正常系" do
    before do
      @cli = LineNotify.new
    end
    it "半角英数字メッセージが送信できること" do
      res = @cli.send({message: "hoge123"})
      expect(Net::HTTPSuccess === res).to eq true
    end

    it "日本語メッセージが送信できること" do
      res = @cli.send({message: "ふが"})
      expect(Net::HTTPSuccess === res).to eq true
    end

    it "スタンプが送信できること" do
      res = @cli.send({message: 'メッセージ', stickerPackageId: 1, stickerId: 113})
      expect(Net::HTTPSuccess === res).to eq true
    end

    it "画像が送信できること" do
      res = @cli.send({
        message: '可愛い画像',
        imageFullsize: "https://www.pakutaso.com/shared/img/thumb/SAYAPAKU5347_TP_V4.jpg",
        imageThumbnail: "https://www.pakutaso.com/shared/img/thumb/SAYAPAKU5347_TP_V.jpg"
      })
      expect(Net::HTTPSuccess === res).to eq true
    end
  end

  describe "異常系" do
    before do
      @cli = LineNotify.new
    end
    it "空メッセージ" do
      res = @cli.send({message: ""})
      expect(Net::HTTPSuccess === res).to eq false
    end

    it "stickerIdがたりない" do
      res = @cli.send({message: 'メッセージ', stickerPackageId: 1})
      expect(Net::HTTPSuccess === res).to eq false
    end

    it "サムネイルが足りない" do
      res = @cli.send({
                          message: 'メッセージ',
                          imageFullsize: "https://www.pakutaso.com/shared/img/thumb/SAYAPAKU5347_TP_V4.jpg"
                      })
      expect(Net::HTTPSuccess === res).to eq false
    end
  end
end
