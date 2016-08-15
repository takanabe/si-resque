class Hello
  @queue = :resque_sample_app # Woeker起動時に指定するQUEUE名

  def self.perform(message)
    sleep 5
    10.times do |time|
      sleep 2
      logger = Logger.new(File.join(Rails.root, 'log', 'resque.log'))
      logger.info "##{time}:Hello #{message}"
    end
  end
end
