#options for paperclip

#Paperclip::Attachment.default_options[:url] = 'variations.s3.amazonaws.com'
Paperclip::Attachment.default_options[:url] = 's3_alias_url'
Paperclip::Attachment.default_options[:s3_host_name] = 's3-eu-west-1.amazonaws.com'
Paperclip::Attachment.default_options[:s3_host_alias] = 'photos.musicales-tannay.ch'
Paperclip::Attachment.default_options[:path] = '/photos/:style/:filename'
Paperclip::Attachment.default_options[:use_timestamp] = false