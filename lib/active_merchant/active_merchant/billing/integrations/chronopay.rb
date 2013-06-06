# coding: UTF-8


module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Chronopay
        autoload :Return, 'active_merchant/active_merchant/billing/integrations/chronopay/return.rb'
        autoload :Helper, 'active_merchant/active_merchant/billing/integrations/chronopay/helper.rb'
        autoload :Notification, 'active_merchant/active_merchant/billing/integrations/chronopay/notification.rb'

        mattr_accessor :service_url
        self.service_url = 'https://secure.chronopay.com/index_shop.cgi'

        def self.notification(post, options = {})
          Notification.new(post)
        end
        
        def self.return(query_string, options = {})
          Return.new(query_string)
        end
      end
    end
  end
end
