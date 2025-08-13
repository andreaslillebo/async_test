require 'async/job/processor/inline'

Rails.application.configure do
  config.async_job.define_queue "default" do
    dequeue Async::Job::Processor::Inline
  end

  config.active_job.queue_adapter = :async_job
end
