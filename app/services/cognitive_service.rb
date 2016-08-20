class CognitiveService
  attr :texts, :scores, :avg
  def initialize(texts=[])
    @texts = texts
    get_scores
  end

  def get_scores
    url = "https://westus.api.cognitive.microsoft.com/text/analytics/v2.0/sentiment"
    headers = {
      "Content-Type" => 'application/json',
      "Accept" => 'application/json',
      'Ocp-Apim-Subscription-Key' => ENV["AZURE_KEY"]
    }
    scores = []
    docs = []
    @texts.each_with_index do |text,i|
      docs  <<
          {
            "id": i.to_s,
            "text": text
          }
    end

    data = {documents: docs}

      response = RestClient::Request.execute(
        method: :post,
        url: url,
        payload: data.to_json,
        headers: headers
      )

    @scores = JSON.parse(response.body)['documents'].map{|n| n['score']}
    @avg =  @scores.sum / @scores.size.to_f
    @scores
  end
end