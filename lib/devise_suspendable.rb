unless defined?(Devise)
  require 'devise'
end
require 'devise_suspendable'

Devise.add_module :suspendable, :model => 'devise_suspendable/model'

module DeviseSuspendable
end

require 'devise_suspendable/rails'
