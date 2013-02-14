call_collection :align=>:left do |collection|
  collection.trap { |line| line[0,3] == 'COL' }
  collection.template :call_record
  collection.column :call_back_user_id, 11  #link [Staff Codes]
  collection.column :call_back_date, 14, :align=>:right #DateTime
  collection.column :call_back_done_date, 14, :align=>:right #DateTime
  collection.column :bill_narrative_id, 11 #link [Narrative Codes]
  collection.column :comments, 255
  collection.column :entered_date, 14, :align=>:right #DateTime
  collection.column :user_id, 11 #link [Staff codes]
  collection.column :collection_id, 11 #link [Collection Codes]
  collection.spacer 11
end
