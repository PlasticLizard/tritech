trip :align => :left do |trip|
  trip.trap { |line| line[0,3] == 'CAL' }
  trip.template :call_record
  trip.column :type_of_call_id, 4 #link [Call Data Setup]
  trip.spacer 7
  trip.column :patient_number, 11
  trip.column :call_date, 8, :padding => :zero, :align => :right
  trip.spacer 6
  trip.column :date_entered, 14, :padding => :zero, :align => :right #DATETIME
  trip.column :company_id, 11 #link [Company Codes]
  trip.column :current_payor_id, 11 #link [Payor Codes]
  trip.column :incident_number, 15
  trip.column :membership_status, 2, :type=>:integer,:align =>:right,:padding=>:zero#TB5
  trip.column :schedule_id, 11 #link [Schedule Codes]
  trip.column :event_id, 11 #link [Event Codes]
  trip.column :caller_id, 11 #link [Caller Codes]
  trip.column :dispatch_urgency_id, 11 #link [Urgency Codes]

  trip.column :pickup_location_id, 11 #link [Location Codes]
  trip.column :pickup_address1, 30
  trip.column :pickup_address2, 30
  trip.column :pickup_city_id, 11 #link [City Codes]
  trip.column :pickup_city_extension, 4, :align => :right, :padding => :zero
  trip.column :pickup_city, 30
  trip.column :pickup_state, 2
  trip.column :pickup_zip_code, 5, :align => :right, :padding => :zero
  trip.column :pickup_description, 30
  trip.column :pickup_zone_id, 11 #link [zone Codes]
  trip.column :transport_urgency_id, 11 #link [Urgency Codes]

  trip.column :dropoff_location_id, 11 #link [Location Codes]
  trip.column :dropoff_address1, 30
  trip.column :dropoff_address2, 30
  trip.column :dropoff_city_id, 11 #link [City Codes]
  trip.column :dropoff_city_extension, 4, :align => :right, :padding => :zero
  trip.column :dropoff_city, 30
  trip.column :dropoff_state, 2
  trip.column :dropoff_zip_code, 5, :align => :right, :padding => :zero
  trip.column :dropoff_description, 30
  trip.column :dropoff_zone_id, 11 #link [zone Codes]
  trip.column :discharged_from, 1 #Y/N
  trip.column :outpatient_only, 1 #Y/N
  trip.column :bill_as_emergency, 1 #Y/N
  trip.column :admitted_to, 1 #Y/N

  trip.column :unit_id, 11 #link [Unit Codes]
  trip.column :level_of_care_id, 11 #link [Level Of Care Codes]
  trip.column :odometer_starting,8, :type=> :money_with_implied_decimal,:precision=>1,:align=>:right, :padding=>:zero
  trip.column :odometer_pickup,  8, :type =>:money_with_implied_decimal,:precision=>1,:align=>:right, :padding=>:zero
  trip.column :odometer_dropoff, 8, :type=> :money_with_implied_decimal,:precision=>1,:align=>:right, :padding=>:zero
  trip.column :odometer_ending,  8, :type=> :money_with_implied_decimal,:precision=>1,:align=>:right, :padding=>:zero
  trip.column :hour_meter_starting, 3,:type=>:money_with_implied_decimal,:precision=>1,:align=>:right
  trip.column :hour_meter_ending, 3, :type=>:money_with_implied_decimal,:prevision=>1,:align=>:right
  trip.column :accept_assign, 2, :align=>:right, :type=>:integer #TB1
  trip.column :accept_assign_default, 1 #Y/N
  trip.column :primary_payor_id, 11 #link [Payor Codes]
  trip.column :sign_source_date, 8, :padding=>:zero,:align=>:right
  trip.column :sign_source, 2, :type=>:integer, :align=>:right #TB6
  trip.column :sign_source_payor_medicare, 1 #Y/N
  trip.column :sign_source_payor_medicaid, 1 #Y/N
  trip.column :sign_source_payor_insurance, 1 #Y/N
  trip.column :employement_related, 2, :type=>:integer, :align=>:right #TB2
  trip.column :accident_indicator, 2, :type=>:integer, :align=>:right #TB3
  trip.column :accident_date, 8,:align=>:right,:padding=>:zero
  trip.column :place_of_service, 3
  trip.column :place_of_service_alternate, 3
  trip.column :type_of_service, 2
  trip.column :second_modifier, 2
  trip.column :ord_ref_doc_id, 11 #link [Doctor Codes]
  trip.column :ord_ref_doc_last_name, 20
  trip.column :ord_ref_doc_first_name, 15
  trip.column :ord_ref_doc_middle_initial, 1
  trip.column :ord_ref_doc_upin, 10
  trip.column :incident_number_alternate, 15
  trip.column :trauma_cause_indicator, 2, :type=>:integer, :align=>:right #TB4
  trip.column :aging_date, 8, :align=>:right, :padding=>:zero
  trip.column :time_pay_amount, 7, :type=>:money_with_implied_decimal, :precision=>2, :align=>:right
  trip.column :original_schedule_id, 11 #link [Schedule Codes]
  trip.column :assigned_to_user_id, 11 #link [Staff Codes]
  trip.spacer 11
end
