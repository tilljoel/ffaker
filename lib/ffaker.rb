module Faker
  VERSION = "1.15.0"

  require 'ffaker/utils/array_utils'
  require 'ffaker/utils/module_utils'

  extend ModuleUtils

  LETTERS = k('a'..'z')

  def self.numerify(*masks)
    mask = ArrayUtils.rand(masks.flatten)
    mask.gsub!(/#/) { rand(10).to_s }
    mask
  end

  def self.letterify(*masks)
    mask = ArrayUtils.rand(masks.flatten)
    mask.gsub!(/\?/) { LETTERS.rand }
    mask
  end

  def self.bothify(masks)
    letterify(numerify(masks))
  end

  autoload :Address,       'ffaker/address'
  autoload :AddressAU,     'ffaker/address_au'
  autoload :AddressCA,     'ffaker/address_ca'
  autoload :AddressDE,     'ffaker/address_de'
  autoload :AddressSE,     'ffaker/address_se'
  autoload :AddressSN,     'ffaker/address_sn'
  autoload :AddressUK,     'ffaker/address_uk'
  autoload :AddressUS,     'ffaker/address_us'
  autoload :Company,       'ffaker/company'
  autoload :CompanySE,     'ffaker/company_se'
  autoload :Education,     'ffaker/education'
  autoload :Geolocation,   'ffaker/geolocation'
  autoload :HTMLIpsum,     'ffaker/html_ipsum'
  autoload :HipsterIpsum,  'ffaker/hipster_ipsum'
  autoload :Internet,      'ffaker/internet'
  autoload :InternetSE,    'ffaker/internet_se'
  autoload :Job,           'ffaker/job'
  autoload :Lorem,         'ffaker/lorem'
  autoload :LoremCN,       'ffaker/lorem_cn'
  autoload :Name,          'ffaker/name'
  autoload :NameCN,        'ffaker/name_cn'
  autoload :NameDE,        'ffaker/name_de'
  autoload :NameJA,        'ffaker/name_ja'
  autoload :NameKR,        'ffaker/name_kr'
  autoload :NameRU,        'ffaker/name_ru'
  autoload :NameSE,        'ffaker/name_se'
  autoload :NameSN,        'ffaker/name_sn'
  autoload :NamePH,        'ffaker/name_ph'
  autoload :PhoneNumber,   'ffaker/phone_number'
  autoload :PhoneNumberAU, 'ffaker/phone_number_au'
  autoload :PhoneNumberSE, 'ffaker/phone_number_se'
  autoload :PhoneNumberSN, 'ffaker/phone_number_sn'
  autoload :PhoneNumberSG, 'ffaker/phone_number_sg'
  autoload :Product,       'ffaker/product'
  autoload :SSN,           'ffaker/ssn'
  autoload :SSNSE,         'ffaker/ssn_se'
end
