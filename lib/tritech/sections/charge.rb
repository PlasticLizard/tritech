 charge :align => :left do |charge|
   charge.trap { |line| line[0,3] == 'CHG'}
   charge.template :call_record
   charge.column :charge_id, 11 #link [Charge Codes]
   charge.column :charge_date, 8, :padding => :zero, :align => :right
   charge.column :log_date, 8, :padding => :zero, :align => :right
   charge.column :user_id, 11 #link [Staff Codes]
   charge.column :company_id, 11 #link [Company Codes]
   charge.spacer 6
   charge.column :quantity, 6, :type=>:money_with_implied_decimal, :align=>:right, :padding=>:zero, :precision => 2
   charge.column :charge_narrative, 255
   charge.column :bill_narrative_id, 11 #link [Narrative Codes]
   charge.column :related_reasons, 4
   charge.column :sales_tax, 7, :type=>:money_with_implied_decimal, :align =>:right, :padding=>:zero, :precision => 2
   charge.column :other_tax, 7, :type => :money_with_implied_decimal, :align=>:right, :padding=>:zero, :precision => 2
   charge.column :accounting_period_id, 5, :type=>:integer, :align=>:right, :padding=>:zero
   charge.column :price_per_unit, 11, :type => :money_with_implied_decimal, :align=>:right, :padding=>:zero, :precision => 2
   charge.column :active, 1 #Y/N
   charge.column :sequence_number, 3, :type => :integer, :align=>:right #Amazon will supply if left space filled
 end
