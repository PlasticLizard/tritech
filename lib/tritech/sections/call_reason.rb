call_reason :align=>:left do |reason|
  reason.trap { |line| line[0,3] == 'CAR' }
  reason.template :call_record
  reason.column :sequence, 3, :type=>:integer, :padding=>:zero, :align=>:right
  reason.column :reason_id, 11 #link [Reason Codes]
end
