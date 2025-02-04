class AvatarService
  def self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def self.avatar_members(nation)
    JSON.parse(AvatarService.conn.get("/api/v1/characters?perPage=200&affiliation=#{nation}").body, symbolize_names: true)
  end
end
