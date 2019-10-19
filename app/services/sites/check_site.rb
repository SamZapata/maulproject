class Sites::CheckSite
  def call(site)
    networks = []
    if site.website.present?
      networks << true
    end
    if site.facebook.present?
      networks << true
    end
    if site.twitter.present?
      networks << true
    end
    if site.instagram.present?
      networks << true
    end
    if site.youtube.present?
      networks << true
    end
    networks
  end
end
