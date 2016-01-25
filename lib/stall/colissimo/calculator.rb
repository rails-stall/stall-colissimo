module Stall
  module Colissimo
    class Calculator < Stall::Shipping::CountryWeightTableCalculator
      register :colissimo

      def load_data
        load_from(
          File.read(
            File.expand_path('../../../../vendor/colissimo.csv', __FILE__)
          )
        )
      end

      def trackable?
        true
      end

      def tracking_url
        return unless cart.shipment.tracking_code.present?
        "http://www.colissimo.fr/portail_colissimo/suivre.do?colispart=#{ cart.shipment.tracking_code }"
      end
    end
  end
end
