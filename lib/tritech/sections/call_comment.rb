comment :align => :left do |comment|
  comment.trap { |line| line[0,3] == 'CCO'}
  comment.template :call_record
  comment.column :time_entered, 14, :align=>:right, :padding=>:zero #DateTime
  comment.column :user_id, 11 #link [Staff Codes]
  comment.column :comments, 255
  comment.column :narrative_id, 11 #link [Narrative Codes]
  comment.spacer 11
end
