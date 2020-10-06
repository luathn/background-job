class UpdateCountWorker
  include Sidekiq::Worker

  def perform(id, type = :normal)
    video = Video.find(id)

    if type == :normal
      puts "normal"
      video.increase_view!
    else
      number = REDIS.hget("count", id)
      REDIS.hdel("count", id)
      video.increase_view!(number.to_i)
      puts "id: #{id}    number: #{number}"
    end
  rescue => e
    puts "error: #{e}"
  end
end
