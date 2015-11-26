module CliIntegrationSpecHelpers

  def script
    'bundle exec lib/anagramer.rb'
  end

  def run(filename)
    @return_output = `#{script} #{filename}`
  end

  def return_code
    $?.exitstatus
  end

  def return_output
    @return_output
  end

end
