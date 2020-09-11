# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
    attr_accessor :unformated_emails_string
    email_formatted = Array.new

    def initialize(unformated_emails_string)
        @emails = unformated_emails_string
    end

    def parse
        variable = @emails.gsub(/,/,"")
        email_formatted = variable.split(" ")
        email_formatted.uniq
    end
end