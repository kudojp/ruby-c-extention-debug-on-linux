require_relative './async_scheduler/lib/async_scheduler'

thread = Thread.new do
  t = Time.now
  Fiber.set_scheduler AsyncScheduler::Scheduler.new

  Fiber.schedule do
    puts 'some string'
  end
end
thread.join
