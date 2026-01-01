# frozen_string_literal: true
require 'date'
require 'fileutils'

class Note
  attr_accessor :fileName, :content, :modificationTime
  attr_reader :creationTime

  def initialize(content = '', directory = '.', fileName = nil)
    FileUtils.mkdir_p(directory)

    base_name = (fileName || Date.today.to_s) + ".md"
    @fileName = File.join(directory, base_name)

    @creationTime = Time.now
    @modificationTime = @creationTime
    @content = "Date: #{Date.today} \n #{content}"
  end

  def save
    file = File.open(@fileName, "w")
    file.write(@content)
    file.close
  end

end
