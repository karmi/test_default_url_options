# Default locale for standard Rails internalization
# See www.rails-i18n.org for more information about Rails i18n 

{ :"en-US" => {
  
  # == ActiveSupport
  # <tt>activesupport/lib/active_support/locale/en-US.rb</tt>
  :support => {
    :array => {
      :sentence_connector => 'and'
    }
  },
  
  # === Date
  :date => {
    :formats => {
      :default => "%Y-%m-%d",
      :short => "%b %d",
      :long => "%B %d, %Y",
    },
    :day_names => Date::DAYNAMES,
    :abbr_day_names => Date::ABBR_DAYNAMES,
    :month_names => Date::MONTHNAMES,
    :abbr_month_names => Date::ABBR_MONTHNAMES,
    :order => [:year, :month, :day]
  },
  
  # === Time
  :time => {
    :formats => {
      :default => "%a, %d %b %Y %H:%M:%S %z",
      :short => "%d %b %H:%M",
      :long => "%B %d, %Y %H:%M",
    },
    :am => 'am',
    :pm => 'pm'
  },
  
  # === Numbers
  
  
  # == ActionView
  # <tt>actionpack/lib/action_view/locale/en-US.rb</tt>
  :datetime => {
    :distance_in_words => {
      :half_a_minute       => 'half a minute',
      :less_than_x_seconds => ['less than 1 second', 'less than {{count}} seconds'],
      :x_seconds           => ['1 second', '{{count}} seconds'],
      :less_than_x_minutes => ['less than a minute', 'less than {{count}} minutes'],
      :x_minutes           => ['1 minute', '{{count}} minutes'],
      :about_x_hours       => ['about 1 hour', 'about {{count}} hours'],
      :x_days              => ['1 day', '{{count}} days'],
      :about_x_months      => ['about 1 month', 'about {{count}} months'],
      :x_months            => ['1 month', '{{count}} months'],
      :about_x_years       => ['about 1 year', 'about {{count}} year'],
      :over_x_years        => ['over 1 year', 'over {{count}} years']
    }
  },
  :number => {
    :format => {
      :precision => 3,
      :separator => '.',
      :delimiter => ','
    },
    :currency => {
      :format => {
        :unit => '$',
        :precision => 2,
        :format => '%u%n'
      }
    },
    :human => {
      :format => {
        :precision => 1,
        :delimiter => ''
      }
    },
    :percentage => {
      :format => {
        :delimiter => ''
      }
    },
    :precision => {
      :format => {
        :delimiter => ''
      }
    }
  },
  :active_record => {
    :error => {
      :header_message => ["1 error prohibited this {{object_name}} from being saved", "{{count}} errors prohibited this {{object_name}} from being saved"],
      :message => "There were problems with the following fields:"
    }
  },
  
  # == ActiveRecord
  # <tt>activerecord/lib/active_record/locale/en-US.rb</tt>
  :active_record => {
    :error_messages => {
      :inclusion => "is not included in the list",
      :exclusion => "is reserved",
      :invalid => "is invalid",
      :confirmation => "doesn't match confirmation",
      :accepted  => "must be accepted",
      :empty => "can't be empty",
      :blank => "can't be blank",
      :too_long => "is too long (maximum is {{count}} characters)",
      :too_short => "is too short (minimum is {{count}} characters)",
      :wrong_length => "is the wrong length (should be {{count}} characters)",
      :taken => "has already been taken",
      :not_a_number => "is not a number",
      :greater_than => "must be greater than {{count}}",
      :greater_than_or_equal_to => "must be greater than or equal to {{count}}",
      :equal_to => "must be equal to {{count}}",
      :less_than => "must be less than {{count}}",
      :less_than_or_equal_to => "must be less than or equal to {{count}}",
      :odd => "must be odd",
      :even => "must be even"
    }            
  }
  
 }
}