#options for paperclip

Paperclip::Attachment.default_options[:url] = 'variations.s3.amazonaws.com'
Paperclip::Attachment.default_options[:s3_host_alias] = 'photos.musicales-tannay.ch'
Paperclip::Attachment.default_options[:path] = '/photos/#{self.gallery}/:style/:filename:origstamp'
Paperclip::Attachment.default_options[:use_timestamp] = false