module SitesHelper
  NETWORKS = [
    'website',
    'facebook',
    'instagram',
    'twitter',
    'youtube'
  ]
  def networks_section(site)
    links = []
    # NETWORKS.each do |n|
      # case site[:n].present?
      # when true
      #   links << content_tag(:i, image_tag("icons/#{n}.svg"))
      # end
      # if site[:n] != nil
      #   links << content_tag(:i, image_tag("icons/#{n}.svg"))
      # end

      # site[:n].present? == true ? links << content_tag(:i, image_tag("icons/#{n}.svg")) : nil

      # links << content_tag(:i, image_tag("icons/#{n}.svg"))
    # end
    if site.website.present?
      links << content_tag(:i, link_to(image_tag("icons/website.svg"), site.website, target: '_blank', class: 'link-svg'))
    end
    if site.facebook.present?
      links << content_tag(:i, link_to(image_tag("icons/facebook.svg"), site.facebook, target: '_blank', class: 'link-svg'))
    end
    if site.twitter.present?
      links << content_tag(:i, link_to(image_tag("icons/twitter.svg"), site.twitter, target: '_blank', class: 'link-svg'))
    end
    if site.instagram.present?
      links << content_tag(:i, link_to(image_tag("icons/instagram.svg"), site.instagram, target: '_blank', class: 'link-svg'))
    end
    if site.youtube.present?
      links << content_tag(:i, link_to(image_tag("icons/youtube.svg"), site.youtube, target: '_blank', class: 'link-svg'))
    end
    links.join.html_safe
  end
end
