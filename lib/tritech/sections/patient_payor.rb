ins :align => :left do |ins|
  ins.trap { |line| line[0,3] == 'INS'}
  ins.template :record
  ins.spacer 1
  ins.column :patient_number, 11
  ins.column :insurance_id, 11 #link [Payor Codes]
  ins.column :coverage, 2, :type=>:integer, :align=>:right, :padding=>:zero #TB1
  ins.column :insurance_schedule_id, 11 #link [Schedule Codes]
  ins.column :relationship, 2, :type=>:integer, :align=>:right, :padding=>:zero #TB2
  ins.column :guarantor, 11
  ins.column :insurance_verify, 1 #Y/N
  ins.column :last_statement_date, 8, :padding=>:zero, :align=>:right
  ins.column :minimum_statement_interval, 5, :type=>:integer, :align=>:right, :padding=>:zero
  ins.column :statement_form_id, 11 #link [Form Codes]
  ins.column :policy_number, 20
  ins.column :insurance_group_id, 15
  ins.column :insurance_group_name, 30
  ins.column :insurance_accept, 1, :type=>:integer, :padding=>:zero, :align=>:right #TB3
  ins.column :insurance_pay_source, 2, :type=>:integer, :padding=>:zero, :align=>:right #TB4
  ins.column :eligibiliy, 2, :type=>:integer, :padding=>:zero, :align=>:right #TB5
  ins.column :series_number, 3, :type=>:integer, :padding=>:zero,:align=>:right
  ins.spacer 11
end
