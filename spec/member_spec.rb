require 'spec_helper'

describe "member" do
    it 'SU-METAL' do
      su_metal = Babymetal::Su_metal.new
      expect(su_metal.metal_name).to eq "SU-METAL"
      expect(su_metal.first_name_ja).to eq 'すず香'
      expect(su_metal.family_name_ja).to eq '中元'
      expect(su_metal.name_ja).to eq '中元 すず香'
      expect(su_metal.first_name_en).to eq 'Suzuka'
      expect(su_metal.family_name_en).to eq 'Nakamoto'
      expect(su_metal.name_en).to eq 'Suzuka Nakamoto'
      expect(su_metal.birthday).to eq '1997-12-20'
      expect(su_metal.blood_type).to eq 'B'
      expect(su_metal.hometown).to eq '広島県'
    end
    it 'YUIMETAL' do
      yui_metal = Babymetal::Yui_metal.new
      expect(yui_metal.metal_name).to eq "YUIMETAL"
      expect(yui_metal.first_name_ja).to eq '由結'
      expect(yui_metal.family_name_ja).to eq '水野'
      expect(yui_metal.name_ja).to eq '水野 由結'
      expect(yui_metal.first_name_en).to eq 'Yui'
      expect(yui_metal.family_name_en).to eq 'Mizuno'
      expect(yui_metal.name_en).to eq 'Yui Mizuno'
      expect(yui_metal.birthday).to eq '1999-06-20'
      expect(yui_metal.blood_type).to eq 'O'
      expect(yui_metal.hometown).to eq '神奈川県'
    end
    it 'MOAMETAL' do
      moa_metal = Babymetal::Moa_metal.new
      expect(moa_metal.metal_name).to eq "MOAMETAL"
      expect(moa_metal.first_name_ja).to eq '最愛'
      expect(moa_metal.family_name_ja).to eq '菊地'
      expect(moa_metal.name_ja).to eq '菊地 最愛'
      expect(moa_metal.first_name_en).to eq 'Moa'
      expect(moa_metal.family_name_en).to eq 'Kikuchi'
      expect(moa_metal.name_en).to eq 'Moa Kikuchi'
      expect(moa_metal.birthday).to eq '1999-07-04'
      expect(moa_metal.blood_type).to eq 'A'
      expect(moa_metal.hometown).to eq '愛知県'
    end
end
