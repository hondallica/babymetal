require 'spec_helper'

describe Babymetal do
  it 'has a version number' do
    expect(Babymetal::VERSION).not_to be nil
  end
  context 'has a news method' do
    it 'Default (Japanese)' do
      news = Babymetal::news
      expect(news[0][:url]).to match %r|^http://www\.babymetal\.jp|
    end
    it 'Japanese' do
      news = Babymetal::news "ja"
      expect(news[0][:url]).to match %r|^http://www\.babymetal\.jp|
    end
    it 'English' do
      news = Babymetal::news "en"
      expect(news[0][:url]).to match %r|^http://www\.babymetal\.com|
    end
    it 'Unknown (English)' do
      news = Babymetal::news "??"
      expect(news[0][:url]).to match %r|^http://www\.babymetal\.com|
    end
  end
end
