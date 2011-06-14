require "rubygems"
require "slither"

module Tritech
  SPECIFICATION = Slither.define :tritech do |batch|
    batch.template :record do |r|
      r.column :record_type, 3
    end

    batch.template :call_record do |r|
      r.column :record_type, 3
      r.spacer 1
      r.column :call_number, 15, :align => :left #pkey
      r.column :leg, 1, :type => :integer, :align =>:right, :padding=>:zero
      r.column :patient_rank, 1
    end

    batch.header do |header|
      header.trap { |line| line[0,3] == 'HDR'}
      header.template :record
      header.column :batch_number, 6, :padding => :zero
    end

    dir = File.join(File.expand_path('.',__FILE__.gsub(/.rb$/,'')), "sections/**/*.rb")
    Dir[dir].each { |section|  batch.instance_eval(File.read(section))}
  end

  def self.parse(file)
    parsed = []
    content = File.foreach(file) do |line|
      section = SPECIFICATION.sections.find { |s|s.match(line)}
      parsed << section.parse(line) if section
    end
    parsed
  end

  def self.generate(data)
    builder = []
    errors = []
    data.each do |record|
      begin
        section = SPECIFICATION.sections.find { |s| s.match(record[:record_type])}
        builder << section.format(record)
      rescue => ex
        errors << {:exception => ex.to_s, :record => record}
      end
    end
    #Tritech Amazon is a windows product, so it needs
    #windows style line endings.
    {:contents => builder.join("\r\n"), :problems => errors}
  end

  def self.write(filename, data)
    File.open(filename, 'w') do |f|
      f.write generate(data)
    end
  end

end

#Slither.parse('u.txt', :tritech, :flat=>true).each { |record|puts record[:record_type]}
#Slither.write('u2.txt', :tritech, Slither.parse('u.txt', :tritech, :flat=>true))
#puts Slither.parse('u2.txt', :tritech, :flat=>true).inspect
