module Cukesetaptesting
  module Management
    class EdhIntegrationView < BaseView
      keyword(:management_integrations) {content.a(:text,'Integrations')}
      keyword(:integrations_page_check) {content.h2(:text,'everydayhero integration')}
      keyword(:set_up) {content.button(:id,'setupEdhImport')}
      keyword(:api_key) {content.text_field(:id,'apiKey')}
      keyword(:edh_integration_next) {content.button(:id,'wizardNext')}
      keyword(:edh_integration_previous) {content.button(:id,'wizardPrevious')}
      keyword(:edh_integration_save) {content.button(:id,'wizardSaveClose')}
      keyword(:edh_integration_cancel_click) {content.button(:text,'wizardCancel')}
      keyword(:setup_edh_modal) {content.h1(:text,'Set up everydayhero integration')}
      keyword(:notifications) {content.text_field(:id,'notificationEmail')}
      # keyword(:basic_integration_save) {content.div(:id,'<placeholderID>')}
      keyword(:integrations_page_content) {content.div(:id,'<placeholderID>')}
      keyword(:map_campaigns) {content.div(:id,'<placeholderID>')}
      keyword(:default_fund) {content.select(:id,'defaultFund')}
      keyword(:default_campaign) {content.select(:id,'defaultCampaign')}
      keyword(:default_approach) {content.select(:id,'defaultApproach')}
      # keyword(:campaign_mappings_save) {content.div(:id,'<placeholderID>')}
      keyword(:select_historical_data) {content.div(:id,'<placeholderID>')}
      keyword(:historical_data_modal) {content.div(:id,'<placeholderID>')}
      keyword(:all_historical_data) {content.radio(:id,'allData').parent.span}
      # keyword(:historical_data_save) {content.div(:id,'<placeholderID>')}
      keyword(:import_button) {content.div(:id,'<placeholderID>')}
      keyword(:edh_signup) {content.a(:text,/Sign up here/)}
      keyword(:edh_signup_page_element) {content.div(:id,'<placeholderID>')}
      keyword(:edh_user_guide) {content.i(:text,/everydayhero/)}
      keyword(:edh_user_guid_page_element) {content.div(:id,'<placeholderID>')}
      keyword(:edh_start_import_button) {content.div(:id,'<placeholderID>')}
      keyword(:edit_set_up) {content.div(:id,'<placeholderID>')}
      keyword(:edit_mappings) {content.div(:id,'<placeholderID>')}
      keyword(:edh_integration_modal_error) {content.div(:id,'<placeholderID>')}

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end