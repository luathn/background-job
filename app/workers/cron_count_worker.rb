class CronCountWorker
  include Sidekiq::Worker

  def perform
    puts "-----------------------------------"
    list_video_count = REDIS.hgetall("count")
    list_video_count.each do |id, _|
      UpdateCountWorker.perform_async(id, :cron)
    end
  end
end
