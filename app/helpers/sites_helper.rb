module SitesHelper
  NETWORKS = [
    'link',
    'facebook',
    'instagram',
    'twitter',
    'youtube'
  ]
  def networks_section(site)
    NETWORKS.each do |n|
      if site[n] != nil || site[n] != ""
        
      end
    end
  end
end
