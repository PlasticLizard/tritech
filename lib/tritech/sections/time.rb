 time :align => :left do |time|
   time.trap { |line| line[0,3] == 'TIM'}
   time.template :call_record
   time.column :description, 15 #Must match user defined amazon time names
   time.column :time, 14, :align=>:right #DateTime
 end
