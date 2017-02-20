require_relative 'base_process'

class MyProcess < BaseProcess
  def execute
    log("Starting to do something.")
    sleep(1)
    log("Did something.  Going to do something else.")
    sleep(2)
    log("Did something else.  All done now.")
  end
end

class MyOtherProcess < BaseProcess
  def execute
    log("Failing because I want to.")
  end
end

class YetAnotherProcess < BaseProcess
  def execute
    log("And yet another log entry.")
  end
end
