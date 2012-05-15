class Frontpage < ActiveRecord::Base
  attr_accessible :main, :first, :second, :third

  # TODO: add validations
  # TODO: ask Corey about styles
  has_attached_file :main, :styles => { :thumb => "125x125>" },
                      storage: :s3,
                      bucket:  'fppis',
                      s3_credentials: {
                      access_key_id: 'AKIAJS5LXFFIXGEZFL3A',
                      secret_access_key: '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'
                      },
                      s3_host_name: 's3-eu-west-1.amazonaws.com'

  has_attached_file :first, :styles => { :thumb => "125x125>" }
                      storage: :s3,
                      bucket:  'fppis',
                      s3_credentials: {
                      access_key_id: 'AKIAJS5LXFFIXGEZFL3A',
                      secret_access_key: '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'
                      },
                      s3_host_name: 's3-eu-west-1.amazonaws.com'

  has_attached_file :second, :styles => { :thumb => "125x125>" }
                      storage: :s3,
                      bucket:  'fppis',
                      s3_credentials: {
                      access_key_id: 'AKIAJS5LXFFIXGEZFL3A',
                      secret_access_key: '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'
                      },
                      s3_host_name: 's3-eu-west-1.amazonaws.com'

  has_attached_file :third, :styles => { :thumb => "125x125>" }
                      storage: :s3,
                      bucket:  'fppis',
                      s3_credentials: {
                      access_key_id: 'AKIAJS5LXFFIXGEZFL3A',
                      secret_access_key: '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'
                      },
                      s3_host_name: 's3-eu-west-1.amazonaws.com'
end
