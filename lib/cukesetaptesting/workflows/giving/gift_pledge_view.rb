module Cukesetaptesting
  module Giving
    class GiftPledgeView < BaseView
      keyword(:date_field) {content.div(:class,"calendarPopup").text_field(:id, "date")}
      # keyword(:date_field) {content.text_field(:id, "date")}
      keyword(:calendar_button) {content.div(:class,"calendarPopup").img(:src, "/prod/images/newCalendarIcon.png")}
      keyword(:transactions) {add_entry.option(:text, 'Gift/Pledge')}

      # field for money received
      keyword(:received_field) {content.table(:class,"pageTextNormal").text_field(:id, "recived")}
      #combo box for type of fund
      keyword(:fund_type) {content.table(:class,"pageTextNormal").text_field(:id, "intentRef_comboText")}
      #combo box for setting the campaign type
      keyword(:campaign_type) {content.table(:class,"pageTextNormal").text_field(:id, "campaignRef_comboText")}
      keyword(:approach_type) {content.table(:class,"pageTextNormal").text_field(:id, "approachRef_comboText")}

      keyword(:payment_method) {content.div(:id, 'giftTypesControls').select(:name, 'paymentType')}
      keyword(:select_payment) {payment_method.option(:value, 'creditCardFields')}
      keyword(:check_field) {payment_method.option(:value, 'checkFields')}

      keyword(:check_date) {content.div(:id, "checkFields").text_field(:name, "checkDate")}
      keyword(:check_number) {content.div(:id, "checkFields").text_field(:name, "checkNumber")}

      keyword(:card_number) {content.div(:id, 'creditCardFields').text_field(:name, "creditCardNumber")}

      keyword(:select_month) {content.div(:id, 'creditCardFields').select(:name, 'creditCardExpirationMonth')}
      keyword(:expiration_month) {select_month.option(:value, "12")}

      keyword(:select_year) {content.div(:id, 'creditCardFields').select(:name, 'creditCardExpirationYear')}
      keyword(:expiration_year) {select_year.option(:value, "2034")}

      keyword(:save) {content.div(:id, 'etap.fieldset.area.9').input(:name, 'saveAnd')}
      keyword(:saveAnd) {content.div(:id, 'etap.fieldset.area.5').input(:name, 'saveAnd')}

      keyword(:yes) {content.div(:class, 'popFooter').input(:id, 'id')} #id for div changes each time so used the class

      keyword(:tribute_bar) {content.div(:id, 'tributeFieldsTitleBar')}
      keyword(:tribute_info) {content.div(:id, 'tributeFields').img(:src, 'images/magnifying-glass.png')}

      keyword(:tribute_search) {content.iframe(:id,'popupFrame').form(:name,'entitySearchForm').text_field(:id,'searchString')}
      keyword(:find) {content.iframe(:id,'popupFrame').form(:name,'entitySearchForm').input(:value,'Find')}
      keyword(:tribute_persona) {content.iframe(:id,'popupFrame').a(:id,'entityName39.0.1150031')}

      keyword(:search_icon2) {content.div(:id, 'softCreditSection').img(:src, 'images/magnifying-glass.png')}
      keyword(:credit_info) {content.iframe(:id,'popupFrame').form(:name,'entitySearchForm').text_field(:id,'searchString')}
      keyword(:persona) {content.iframe(:id,'popupFrame').a(:id,'entityName39.0.3669')}

      keyword(:credit_amount) {content.div(:id, 'softCreditSection').text_field(:id,'newSoftCreditAmount')}

      keyword(:fund_input_arrow) {content.div(:id, 'etap.fieldset.area.2').img(:id, 'intentRef_comboArrow')}
      keyword(:fund_unrestricted) {content.div(:id, 'intentRef_comboAllList_valueRow_39.0.3393')}

      keyword(:campaign_input_arrow) {content.div(:id, 'etap.fieldset.area.2').img(:id, 'campaignRef_comboArrow')}
      keyword(:campaign_annual) {content.div(:id, 'campaignRef_comboAllList_valueRow_39.0.3345')}

      keyword(:approach_input_arrow) {content.div(:id, 'etap.fieldset.area.2').img(:id, 'approachRef_comboArrow')}
      keyword(:approach) {content.div(:id, 'approachRef_comboAllList_valueRow_39.0.3367')}

      keyword(:approach_direct_mail) {content.div(:id, 'approachRef_comboAllList_valueRow_39.0.3365')}

      keyword(:process_transaction) {content.select(:id, 'destinationAfterSave').option(:value,'processTransaction')}

      keyword(:edit) {content.select(:id, 'destinationAfterSave').option(:value,'edit')}
      keyword(:pledged_amount) {content.table(:class, 'pageTextNormal').text_field(:id, 'receivable')}
      keyword(:pledge_schedule) {content.div(:id, 'newPledgeScheduleLink').a(:href,'javascript:saveGiftAndEditSchedule()')}
      keyword(:frequency) {content.div(:id, 'SimpleDiv').option(:value, '12')}
      keyword(:installment_date) {content.div(:id, 'etap.fieldset.area.6').text_field(:id, 'scheduleFirstInstallmentDate')}
      keyword(:installment_amount) {content.div(:id, 'SimpleDiv').text_field(:id, 'scheduleInstallmentAmount')}
      keyword(:pledge_info_bar) {content.div(:id, 'pledgeFieldsTitleBar')}

      keyword(:split_received_field) {content.div(:id,"segmentedGiftHeader").text_field(:id, "received")}

      keyword(:segment) {content.div(:id, 'segmentedGiftHeader').text_field(:name, 'numberOfSegments')}
      keyword(:add_segment) {content.div(:id, 'segmentedGiftHeader').button(:value, 'Add Segments')}

      keyword(:search_for_an_account) {content.div(:id, 'etap.fieldset.area.1').input(:value,'Search for an Account')}
      # keyword(:popup_search_text) { popupSearch }#popupSearch.div(:id, 'etap.fieldset.area.1').form(:name, 'entitySearchForm').div.text_field(:id , 'searchString')}

      def popupSearch
        # frame = browser.frames.find{ |frame| frame.form(:name => 'entitySearchForm').exists? }
        # frame.form(:name => 'entitySearchForm')
        # browser.iframe(:id, "etapContentIframe")
        # browser.frame(:id => 'etapContentIframe')
        # 'entitySearchForm'
        # Page.browser.frame(:id, 'popupFrame')
      end

      def home(model)
      end

      def create(model)
      end

      def edit(model)
      end
    end
  end
end
