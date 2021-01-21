Dir[File.join(File.dirname(__FILE__), 'page_objects/ecommerce/pages/*.rb')]
  .sort.each { |file| require file }

module Ecommerce
  module Pages
    class ECPages
      class << self
        def cadastro
          Ecommerce::Pages::Cadastro::Cadastro.new
        end
        def home
          Ecommerce::Pages::Home::Home.new
        end
        def login
          Ecommerce::Pages::Login::Login.new
        end
      end
    end
  end
end
