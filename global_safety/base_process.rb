class BaseProcess
  def initialize(thread_id)
    @thread_id = thread_id
  end

  def execute
    raise NotImplementedError
  end

  protected

  attr_reader :thread_id

  def log(message)
    $logger.info("[#{thread_id}]<#{self.class}> #{message}")
  end
end
