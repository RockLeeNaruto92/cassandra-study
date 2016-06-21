namespace :update do
  task blogs: :environment do
    puts "Start to test updating large data"
    puts "Number of datas: #{Blog.count}"
    time_min = 1000
    s_start = Time.zone.now.instance_eval{to_i * time_min + (usec / time_min)}
    puts "Start time: #{Time.zone.now}"

    Blog.all.each do |blog|
      blog.update_attributes description: "New desc of #{blog.subdomain}"
    end


    puts "Endtime: #{Time.zone.now}"
    time = Time.zone.now.to_i
    s_end = Time.zone.now.instance_eval{time * time_min + (usec / time_min)}
    elaps_time = (s_end - s_start).to_f / time_min

    puts "Completed!"
    puts "Processing time: #{elaps_time}"
  end
end
