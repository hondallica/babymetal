require "date"
module Babymetal
  class Member
    @@properties = [
      :metal_name, 
      :first_name_ja, 
      :family_name_ja,
      :name_ja,
      :first_name_en, 
      :family_name_en,
      :name_en,
      :birthday,
      :blood_type,
      :hometown,
    ]

    @@properties.each do |prop|
      attr_accessor prop
    end

    def initialize(hash = self.info)
      self.send('name_ja' + '=', "#{hash[:family_name_ja]} #{hash[:first_name_ja]}")
      self.send('name_en' + '=', "#{hash[:first_name_en]} #{hash[:family_name_en]}")
      hash.each do |key, value|
        if @@properties.member? key.to_sym
          self.send((key.to_s + '=').to_s, value)
        end
      end
    end

    def info
      {
        :metal_name => 'We are BABYMETAL',
      }
    end

  end
end
