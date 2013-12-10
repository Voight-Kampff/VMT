#options for paperclip

Paperclip::Attachment.default_options[:url] = 'variations.s3.amazonaws.com'
Paperclip::Attachment.default_options[:s3_host_alias] = 'photos.musicales-tannay.ch'
Paperclip::Attachment.default_options[:path] = '/photos/:style/:filename'