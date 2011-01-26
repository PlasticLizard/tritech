guarantor :align => :left do |guarantor|
  guarantor.trap { |line| line[0,3] == 'GUA'}
  guarantor.spacer 1
  guarantor.column :guarantor_number, 11
  guarantor.column :ssn, 9, :type=>:integer, :align=>:right
  guarantor.column :member_number, 11
  guarantor.column :member_effective_date, 8, :padding => :zero,:align=>:right
  guarantor.column :member_expire_date, 8, :padding => :zero, :align=>:right
  guarantor.column :alternate_format, 1 #type=Y/N
  guarantor.column :last_name, 20
  guarantor.column :first_name, 15
  guarantor.column :middle_initial, 1
  guarantor.column :generation, 1, :type=>:integer #ref TB1
  guarantor.column :title, 15
  guarantor.column :date_of_birth, 8, :align => :right, :padding => :zero
  guarantor.column :sex, 1, :type => :integer #ref TB2
  guarantor.column :facility_id, 11 #link [Location Codes]
  guarantor.column :address1, 30
  guarantor.column :address2, 30
  guarantor.column :city_id, 11 #link [City Codes]
  guarantor.column :city_extension, 4, :align => :right, :padding => :zero
  guarantor.column :city, 30
  guarantor.column :state, 2
  guarantor.column :zip_code, 5, :align => :right, :padding => :zero
  guarantor.column :phone1, 10
  guarantor.column :phone1_ext, 5
  guarantor.spacer 10
  guarantor.column :phone2, 10
  guarantor.column :phone2_ext, 5
  guarantor.spacer 10
  guarantor.column :zone_id, 11 #link [Zone Codes]
  guarantor.column :email, 40
  guarantor.column :alternate_date_from, 8, :align=>:right, :padding => :zero
  guarantor.column :alternate_date_to, 8, :align=>:right, :padding => :zero
  guarantor.column :address1_alternate, 30
  guarantor.column :address2_alternate, 30
  guarantor.column :alternate_city_id, 11 #link [City Codes]
  guarantor.column :alternate_city_ext, 4, :alight=>:right, :padding => :zero
  guarantor.column :alternate_city, 30
  guarantor.column :alternate_state, 2
  guarantor.column :alternate_zip_code, 5, :align => :right, :padding => :zero
  guarantor.column :alternate_phone1, 10
  guarantor.column :alternate_phone1_ext, 5, :type=>:integer
  guarantor.spacer 10
  guarantor.column :alternate_phone2, 10
  guarantor.column :alternate_phone2_ext, 5, :type => :integer
  guarantor.spacer 10
  guarantor.column :employer_id, 11 #link [Employer Codes]
  guarantor.column :employment_status, 2, :align => :right, :type=>:integer #TB7
  guarantor.spacer 11
end
