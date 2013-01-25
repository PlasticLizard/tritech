call_statistic :align=>:left do |statistic|
  statistic.trap { |line| line[0,3] == 'STA' }
  statistic.template :call_record
  statistic.column :stat_name, 30
  statistic.column :stat_answer_id, 11 #link [Statistic Codes]
  statistic.spacer 11
end
