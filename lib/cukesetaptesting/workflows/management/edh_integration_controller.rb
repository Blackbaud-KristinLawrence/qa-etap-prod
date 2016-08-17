module Cukesetaptesting
  module Management
    class EdhIntegration < BaseController
      @model = EdhIntegrationModel
      @view = EdhIntegrationView


      def management_integrations_click
        @view.management_integrations.when_present.click
      end

      def on_integrations_page?
        sleep 2
        @view.integrations_page_check.present?
      end

      def set_up_click
        @view.set_up.when_present.click
      end

      def setup_edh_modal_present?
        sleep 2
        @view.setup_edh_modal.present?
      end

      def edh_integration_next_click
        sleep 1
        @view.edh_integration_next.when_present.click
        sleep 1
      end

      def edh_integration_previous_click
        sleep 1
        @view.edh_integration_previous.when_present.click
        sleep 1
      end

      def edh_integration_save_click
        sleep 1
        @view.edh_integration_save.when_present.click
        sleep 1
      end

      def edh_integration_cancel_click
        sleep 1
        @view.edh_integration_cancel_click
        sleep 1
      end

      def edh_integration_next_text_include? text
        @view.edh_integration_next.when_present.text.include? text
      end

      def edh_start_import_button_enabled?
        @view.edh_start_import_button.wait_until_present
        button_enabled? @view.edh_start_import_button
      end

      def edit_set_up_click
        @view.edit_set_up.when_present.click
        # @view.set_up.when_present.click
      end

      def edh_integration_modal_error_include? error
        @view.edh_integration_modal_error.when_present.text.include? error
      end

      def next_button_enabled?
        @view.edh_integration_next.wait_until_present
        button_enabled? @view.edh_integration_next
      end

      def save_button_enabled?
        @view.edh_integration_save.wait_until_present
        button_enabled? @view.edh_integration_save
      end

      def button_enabled? button
        button.attribute_value('ng-disabled').nil?
      end

      def integrations_page_content_include? text
        @view.integrations_page_content.when_present.include? text
      end

      def map_campaigns_click
        @view.map_campaigns.when_present.click
      end

      def campaign_mappings_modal_present?
        sleep 2
        @view.campaign_mappings_modal.present?
      end

      def default_fund_select selection
        @view.default_fund.when_present.select selection
      end

      def default_campaign_select selection
        @view.default_campaign.when_present.select selection
      end

      def default_approach_select selection
        @view.default_approach.when_present.select selection
      end

      def select_historical_data_click
        @view.select_historical_data.when_present.click
      end

      def historical_data_modal_present?
        sleep 2
        @view.historical_data_modal.present?
      end

      def all_historical_data_set
        @view.all_historical_data.when_present.click
      end

      def import_button_present?
        sleep 2
        @view.import_button.present?
      end

      def edh_signup_click
        @view.edh_signup.when_present.click
      end

      def on_EDH_sign_up_page?
        sleep 3
        @view.edh_signup_page_element.present?
      end

      def edh_user_guide_click
        @view.edh_user_guide.when_present.click
      end

      def on_EDH_user_guide_page?
        sleep 3
        @view.edh_user_guid_page_element.present?
      end

      def edit_mappings_click
        @view.edit_mappings.when_present.click
      end

    end
  end
end
