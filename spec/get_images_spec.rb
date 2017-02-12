require 'spec_helper'

describe GetImages do
  it 'has a version number' do
    expect(GetImages::VERSION).not_to be nil
  end

  context '#uris_list' do
    let(:uri) { 'http://site_with_cat_pictures.example' }
    let(:body) { File.read("#{fixtures_path}/example.html") }

    it 'returns src attributes' do
      allow(GetImages).to receive(:get_body).with(uri).and_return(body)
      expect(GetImages.uris_list(uri)).to eq(['image1.jpg', 'image2.gif'])
    end
  end
end
