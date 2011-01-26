credit :align => :left do |credit|
  credit.trap { |line| line[0,3] == 'PAY'}
  credit.template :call_record
  credit.column :company_id, 11 #link [Company Codes]
  credit.column :credit_id, 11 #link [Company Codes]
  credit.column :amount, 11, :type=>:money_with_implied_decimal, :align=>:right, :padding=>:zero, :precision=>2
  credit.column :received_date, 8, :align=>:right, :padding=>:zero
  credit.column :receipt_number, 15
  credit.column :payor_id, 11 #link [Payor Codes]
  credit.column :check_number, 15
  credit.column :check_date, 8, :align=>:right, :padding=>:zero
  credit.column :deposit_date, 8, :align=>:right, :padding=>:zero
  credit.column :accounting_period_id, 11, :type=>:integer, :align=>:right,:padding=>:zero
  credit.column :log_date, 8, :align=>:right, :padding=>:zero
  credit.column :user_id, 11 #link [Staff Codes]
  credit.column :printable, 1 #Y/N
  credit.spacer 11
  credit.column :active, 1 #Y/N
  credit.column :series_number, 3, :type=>:integer, :align=>:right
end
