#options for paperclip

Paperclip::Attachment.default_options[:s3_host_name] = 's3-eu-west-1.amazonaws.com'
Paperclip::Attachment.default_options[:path] = '/:class/:style/:filename'
Paperclip::Attachment.default_options[:use_timestamp] = false
#Paperclip::Attachment.default_options[:s3_protocol] = 'https'