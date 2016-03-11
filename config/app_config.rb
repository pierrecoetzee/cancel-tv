


case ENVIRONMENT
  when :development

  when :stage

  when :production

  else
    raise StandardError.new 'The ENVIRONMENT variable has not been set'
end