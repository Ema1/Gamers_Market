CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'
  config.storage = :fog
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJNEIHXJ7D4E3G6LA',
	#ENV['S3_ACCESS_KEY'],         # required
    :aws_secret_access_key  => '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',
	#ENV['S3_SECRET_KEY'],         # required
	:region                 => 'us-east-1',  
  }
  config.permissions = 0777
  config.fog_directory  = 'gamersmarket'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end