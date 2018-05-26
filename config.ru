#config.ru
require 'rack'

class MiPrimeraWebApp
 def call(env)
  [200, {'content-Type' => 'text/html'}, ['<p>Lorem Ipsum</p>']]
 end
end

run MiPrimeraWebApp.new 
