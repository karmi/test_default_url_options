# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  helper :all # include all helpers, all the time

  protect_from_forgery # :secret => 'bc0ecbf89638d6231888d0c80a73bc4f'

  before_filter :set_locale

  def available_locales
    AVAILABLE_LOCALES # See config/initializers/locales.rb
  end
    
  def current_locale?(l)
    l == I18n.locale
  end

  private

  def default_url_options(options={})
    # logger.debug "default_url_options is passed options: #{options.inspect}\n"
    # { :locale => I18n.locale, :id => 1 }
    { :locale => I18n.locale }
  end
  
  def set_locale
    I18n.locale = @locale = extract_locale_from_params || extract_locale_from_uri || 'en-US'
    logger.debug "Locale set to '#{I18n.locale}'"
  end

  def extract_locale_from_params
    (available_locales.include? params[:locale]) ? params[:locale]  : nil
  end
  
  def extract_locale_from_uri
    parsed_locale = URI.parse(request.url).host.split('.').last.gsub(/com/, 'en-US')
    (available_locales.include? parsed_locale) ? parsed_locale  : nil
  end  

end
