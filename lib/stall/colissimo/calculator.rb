module Stall
  module Colissimo
    class Calculator < Stall::Shipping::CountryWeightTableCalculator
      register :colissimo

      def load_data
        path = File.expand_path('../../../../vendor/colissimo.csv', __FILE__)
        load_from(File.read(path))
      end

      def trackable?
        true
      end

      def tracking_url
        if (tracking_code = cart.shipment.try(:tracking_code)).present?
          "http://www.colissimo.fr/portail_colissimo/suivre.do?colispart=#{ tracking_code }"
        end
      end
    end
  end
end
