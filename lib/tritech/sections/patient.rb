patient :align=>:left do |patient|
  patient.trap { |line| line[0,3] == 'PAT'}
  patient.template :record
  patient.spacer 1
  patient.column :patient_number, 11
  patient.column :patient_type_id, 4 #link [Patient Data Set]
  patient.spacer 7
  patient.column :ssn, 9, :type=>:integer, :align=>:right
  patient.column :member_number, 11
  patient.column :member_effective_date, 8, :padding => :zero,:align=>:right
  patient.column :member_expire_date, 8, :padding => :zero, :align=>:right
  patient.column :alternate_format, 1 #type=Y/N
  patient.column :last_name, 20
  patient.column :first_name, 15
  patient.column :middle_initial, 1
  patient.column :generation, 1, :type=>:integer #ref TB1
  patient.column :title, 15
  patient.column :date_of_birth, 8, :align => :right, :padding => :zero
  patient.column :sex, 1, :type => :integer #ref TB2
  patient.column :facility_id, 11 #link [Location Codes]
  patient.column :address1, 30
  patient.column :address2, 30
  patient.column :city_id, 11 #link [City Codes]
  patient.column :city_extension, 4, :align => :right, :padding => :zero
  patient.column :city, 30
  patient.column :state, 2
  patient.column :zip_code, 5, :align => :right, :padding => :zero
  patient.column :phone1, 10
  patient.column :phone1_ext, 5
  patient.spacer 10
  patient.column :phone2, 10
  patient.column :phone2_ext, 5
  patient.spacer 10
  patient.column :zone_id, 11 #link [Zone Codes]
  patient.column :email, 40
  patient.column :alternate_date_from, 8, :align=>:right, :padding => :zero
  patient.column :alternate_date_to, 8, :align=>:right, :padding => :zero
  patient.column :address1_alternate, 30
  patient.column :address2_alternate, 30
  patient.column :alternate_city_id, 11 #link [City Codes]
  patient.column :alternate_city_ext, 4, :alight=>:right, :padding => :zero
  patient.column :alternate_city, 30
  patient.column :alternate_state, 2
  patient.column :alternate_zip_code, 5, :align => :right, :padding => :zero
  patient.column :alternate_phone1, 10
  patient.column :alternate_phone1_ext, 5, :type=>:integer
  patient.spacer 10
  patient.column :alternate_phone2, 10
  patient.column :alternate_phone2_ext, 5, :type => :integer
  patient.spacer 10
  patient.column :student_status, 2, :align => :right, :type => :integer #TB3
  patient.column :marital_status, 1, :align => :right, :type => :integer #TB4
  patient.column :race, 1, :align => :right, :type => :integer #TB5
  patient.column :language, 2, :align => :right, :type => :integer #TB6
  patient.column :employment_status, 2, :align => :right, :type=>:integer #TB7
  patient.column :employer_id, 11 #link [Employer Codes]
  patient.column :deceased_date, 8, :padding => :zero, :align=>:right
  patient.column :signature_source, 2, :align=>:right, :type=>:integer #TB8
  patient.column :signature_effective_date, 8, :align=>:right, :padding=>:zero
  patient.column :signature_expire_date, 8, :align=>:right, :padding=>:zero
  patient.column :sign_source_pay_medicare, 1 #Y/N
  patient.column :sign_source_pay_medicaid, 1 #Y/N
  patient.column :sign_source_pay_insurance, 1 #Y/N
  patient.column :certification_number, 15
  patient.column :patient_legal_rep, 11
  patient.spacer 11
end
