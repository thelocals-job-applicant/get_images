require 'spec_helper'

describe GetImages do
  it 'has a version number' do
    expect(GetImages::VERSION).not_to be nil
  end

  describe '#uris_list' do
    let(:uri) { 'http://site_with_cat_pictures.example' }

    context 'there are images on the webpage' do
      let(:body) { File.read("#{fixtures_path}/example_with_imgs.html") }

      it 'returns src attributes' do
        allow(GetImages).to receive(:get_body).with(uri).and_return(body)
        expect(GetImages.uris_list(uri)).to eq(['image1.jpg', 'image2.gif'])
      end
    end

    context 'there are no images on the webpage' do
      let(:body) { File.read("#{fixtures_path}/example_without_imgs.html") }

      it 'returns empty array' do
        allow(GetImages).to receive(:get_body).with(uri).and_return(body)
        expect(GetImages.uris_list(uri)).to eq([])
      end
    end
  end
end
