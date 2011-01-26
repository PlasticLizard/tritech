patient_comment :align => :left do |pc|
  pc.trap { |line| line[0,3] == 'PCO' }
  pc.template :record
  pc.spacer 1
  pc.column :patient_number, 11
  pc.column :comment_date, 14, :align=>:right, :padding=>:zero #DT
  pc.column :comment, 255
  pc.column :user_id, 11 #link [Staff Codes]
  pc.column :bill_narrative_id, 11 #link [Narrative Codes]
  pc.spacer 11
end
