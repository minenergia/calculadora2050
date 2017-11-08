begin
  require 'excel_to_code'
rescue LoadError
  puts "You need to install excel_to_code, try sudo gem install excel_to_code or possibly sudo gem21 install excel_to_code"
  exit
end

# This needs to be changed when the spreadsheet changes
def setup(command)

  path_model = '../../docs/model/modelo v1.1.xlsx'
  path_output = '.'

  command.excel_file = path_model
  command.output_directory = path_output
  command.output_name = 'model'

  # command.named_references_that_can_be_set_at_runtime = ['input.choices']
  command.cells_that_can_be_set_at_runtime = { "Control" => (44.upto(89).to_a.map { |r| "f#{r}" }) }

  # command.named_references_to_keep = lambda do |named_reference|
  #   named_reference =~ /^(input|output)\./i
  # end

  command.cells_to_keep = {
    "Control" => (44.upto(89).to_a.map { |r| ["f#{r}", "h#{r}", "i#{r}", "j#{r}", "k#{r}"] }).flatten,
    "Resultados Intermedios" => :all, 
  }

  # command.create_makefile = false
  # command.create_rakefile = false

  command.actually_compile_code = true
  command.actually_run_tests = true
end

def translate_excel_into_ruby
  command = ExcelToC.new
  setup(command)
  command.go!
end

def create_a_test_for_ruby
  command = ExcelToTest.new
  setup(command)
  command.actually_run_tests = true
  command.go!
end

def change_last_modified_date
  File.open('model_version.rb','w') do |f|
    f.puts "def Model.last_modified_date() @last_modified_date ||= Time.utc(*#{Time.now.to_a}); end"
  end
end

translate_excel_into_ruby
# change_last_modified_date