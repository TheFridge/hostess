if Rails.env.production?
  MAIN_DOMAIN = 'herokuapp.com'
  MAIN_SUBDOMAIN = 'blooming-wildwood-1035.'
else
  MAIN_DOMAIN = 'localhost'
  MAIN_SUBDOMAIN = ''
end
