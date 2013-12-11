#options for paperclip

Paperclip::Attachment.default_options[:url] = 's3-eu-west-1.amazonaws.com/variations'
Paperclip::Attachment.default_options[:s3_host_alias] = 'photos.musicales-tannay.ch'
Paperclip::Attachment.default_options[:path] = '/photos/:style/:filename'
Paperclip::Attachment.default_options[:use_timestamp] = false