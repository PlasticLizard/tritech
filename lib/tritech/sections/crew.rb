 crew :align => :left do |crew|
   crew.trap { |line| line[0,3] == 'CRW'}
   crew.template :call_record
   crew.column :sequence, 3, :type=>:integer, :align=>:right, :padding=>:zero #(1..10)
   crew.column :crew_id, 11 #link [Staff Codes]
 end
