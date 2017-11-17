class ColorLogo < ApplicationRecord
  belongs_to :user

  enum font_set: ['BaskerVilla', 'ProxiNova', 'OpenSans']
  enum theme: ['Light', 'Dark']
end
