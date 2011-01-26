narrative :align => :left do |narrative|
  narrative.trap { |line| line[0,3] == 'NAR' }
  narrative.template :call_record
  narrative.column :narrative_1, 255
  narrative.column :narrative_2, 255
  narrative.column :bill_narrative_code, 11 #link [Narrative Codes]
  narrative.spacer 11
end
