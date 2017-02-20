#!/usr/bin/env ruby

require 'logger'
require_relative 'processes'

$logger = Logger.new(STDOUT)

threads = []

threads << Thread.new do
  thread_id = 'my_thread'

  process = MyProcess.new(thread_id)
  process.execute

  other_process = MyOtherProcess.new(thread_id)
  other_process.execute
end

threads << Thread.new do
  thread_id = 'my_other_thread'

  MyProcess.new(thread_id).execute
  YetAnotherProcess.new(thread_id).execute
end

threads.each(&:join)
