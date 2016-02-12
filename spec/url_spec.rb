require 'spec_helper'

describe "URL" do
  it 'homepage' do
    expect(Babymetal::homepage).to eq "http://www.babymetal.jp/"
  end
  it 'youtube' do
    expect(Babymetal::youtube).to eq "https://www.youtube.com/BABYMETAL"
  end
  it 'facebook' do
    expect(Babymetal::facebook).to eq "https://www.facebook.com/BABYMETAL.jp/"
  end
  it 'instagram' do
    expect(Babymetal::instagram).to eq "https://www.instagram.com/babymetal_jpn/"
  end
  it 'twitter' do
    expect(Babymetal::twitter).to eq "https://twitter.com/BABYMETAL_JAPAN"
  end
end
