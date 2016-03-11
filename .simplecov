SimpleCov.start do
  add_group 'conrollers', '/lib/cancel-tv/controllers'
  add_group 'models', '/lib/cancel-tv/models'
  add_group 'ext', '/lib/ext'

  add_filter '/assets'
  add_filter '/config'
  add_filter '/db'
  add_filter '/features'
  add_filter '/spec'
  add_filter '/tasks'
end