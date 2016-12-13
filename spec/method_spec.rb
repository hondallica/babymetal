require 'spec_helper'

describe "shout" do
  it "su-metal" do
    su_metal = Babymetal::SuMetal.new
    expect(su_metal.shout).to eq "SU-METAL DEATH!!"
  end
  it "yui-metal" do
    yui_metal = Babymetal::YuiMetal.new
    expect(yui_metal.shout).to eq "YUIMETAL DEATH!!"
  end
  it "moa-metal" do
    moa_metal = Babymetal::MoaMetal.new
    expect(moa_metal.shout).to eq "MOAMETAL DEATH!!"
  end
  it "babymetal" do
    expect(Babymetal.shout).to eq "We are BABYMETAL DEATH!!"
  end
end
