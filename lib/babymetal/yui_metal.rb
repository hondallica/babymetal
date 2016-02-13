require "Babymetal/Member"
module Babymetal
  class YuiMetal < Babymetal::Member
    def info
      {
        :metal_name  => 'YUIMETAL',
        :first_name_ja  => '由結',
        :family_name_ja => '水野',
        :first_name_en  => 'Yui',
        :family_name_en => 'Mizuno',
        :birthday       => '1999-06-20',
        :blood_type     => 'O',
        :hometown       => '神奈川県',
      }
    end
  end
end
