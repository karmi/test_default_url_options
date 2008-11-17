# Load locales from RAILS_ROOT/lib/locale directory into Rails
# Will be populated to the simple backend
I18n.load_path += Dir[ File.join(RAILS_ROOT, 'lib', 'locale', '*.{rb,yml}') ]
# Get loaded locale keys into global variable
# TODO: Use Sven's suggestion from http://rails-i18n.org/wiki/pages/i18n-available_locales
I18n.backend.send(:init_translations) # Hack? Hell, yeah :(
AVAILABLE_LOCALES = I18n.backend.send(:instance_variable_get, :@translations).keys.collect { |l| l.to_s }