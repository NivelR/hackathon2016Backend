class HelloController < ApplicationController
  def index
    # SearchsJob.perform_later(params[:q])
    cognitve = search(params[:q])
    render(json: {
        points: get_point(cognitve.avg),
        name: params[:q],
        type: get_type(cognitve.avg),
        texts: cognitve.texts_scores
      })
  end

  def search(q)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key    = ENV['TW_Consumer_key']
      config.consumer_secret = ENV['TW_Consumer_secret']
    end

    tws = client.search("#{q} -filter:retweets", result_type: "mixed", lang: "es").take(20).map{|t| t.text }

    CognitiveService.new(tws)
  end

  def get_point(p)
    (p * 100).to_i
  end

  def get_type(t)
    if t < 0.5
      "m"
    elsif t < 0.8
      "r"
    else
      "b"
    end
  end

end