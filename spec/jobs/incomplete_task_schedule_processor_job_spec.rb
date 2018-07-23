require 'rails_helper'

RSpec.describe IncompleteTaskScheduleProcessorJob, type: :job do
  subject(:job) { described_class.perform_later("task_schedule") }

  it "matches with enqueued job" do
    ActiveJob::Base.queue_adapter = :test
    expect {
      IncompleteTaskScheduleProcessorJob.perform_later
    }.to have_enqueued_job(IncompleteTaskScheduleProcessorJob)
  end

  it 'queues the job' do
    expect { job }
      .to change(ActiveJob::Base.queue_adapter.enqueued_jobs, :size).by(1)
  end

  it 'is in default queue' do
    expect(IncompleteTaskScheduleProcessorJob.new.queue_name).to eq('default')
  end
end
