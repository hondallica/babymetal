require "date"
module Babymetal
  class Member
    PROPERTIES = %i(
      metal_name
      first_name_ja
      family_name_ja
      name_ja
      first_name_en
      family_name_en
      name_en
      birthday
      blood_type
      hometown
    )

    attr_accessor *PROPERTIES

    def initialize(hash = self.info)
      self.send('name_ja' + '=', "#{hash[:family_name_ja]} #{hash[:first_name_ja]}")
      self.send('name_en' + '=', "#{hash[:first_name_en]} #{hash[:family_name_en]}")
      hash.each do |key, value|
        if PROPERTIES.member? key.to_sym
          self.send(key.to_s + '=', value)
        end
      end
    end

    def info
      {
        metal_name: 'We are BABYMETAL',
      }
    end

  end
end
