object @photo
attributes :id
node(:thumb_url){|photo| photo.attachment.url(:thumb)}