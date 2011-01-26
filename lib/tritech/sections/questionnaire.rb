questionnaire :align => :left do |questionnaire|
  questionnaire.trap { |line| line[0,3] == 'QST' }
  questionnaire.template :call_record
  questionnaire.column :question_id, 11, :type=>:integer, :align=>:right, :padding=>:zero #TB1
  questionnaire.column :question_answer_id, 2, :type=>:integer, :align=>:right, :padding=>:zero #TB2
  questionnaire.column :question_text, 80
  questionnaire.spacer 11
end
