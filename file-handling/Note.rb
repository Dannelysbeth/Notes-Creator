# frozen_string_literal: true
require 'date'
require 'fileutils'

class Note
  attr_accessor :file_name, :content, :modification_time
  attr_reader :creation_time

  def initialize(content = '', directory = '.', fileName = nil)
    FileUtils.mkdir_p(directory)

    base_name = (fileName || Date.today.to_s) + ".md"
    @file_name = File.join(directory, base_name)

    @creation_time = Time.now
    @modification_time = @creation_time
    @content = "Date: #{Date.today} \n #{content}"
  end

  def save
    file = File.open(@file_name, "w")
    file.write(@content)
    file.close
  end

end
