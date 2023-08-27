class Constraints::NonWwwDomain
  def self.matches?(request)
    (request.host.downcase == 'www.timcarey.dev' || 'www.lvh.me') && (request.subdomain.blank? || request.subdomain == 'www')
  end
end


