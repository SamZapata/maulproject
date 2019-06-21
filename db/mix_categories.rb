SITE_CATEGORIES = [
  'universidad',
  'colegio',
  'cancha',
  'parque',
  'polideportivo',
  'recrea',
  'i.e',
  'escuela',
  'club social',
]

COMMUNITY_CATEGORIES = [
  'comunidad santi',
  'rugby',
  'gestores de paz',
]

EVENT_CATEGORIES = [
  'maul',
  'deport',
  'acad'
]

Category.all.each_with_index do |category, index|
  if category.ref.match('s')
    Site.all.each_with_index do |site, i|
      SITE_CATEGORIES.each do |sc|
        if category.title.downcase.match(sc) && site.name.downcase.match(sc)
          MixCategory.find_or_create_by!(title: "site - #{category.title} #{sc}", site_id: site.id, category_id: category.id, community_id: 1, event_id: 1 )
        end
      end
    end
  # elsif category.ref.match('c')
  #   Community.all.each_with_index do |community, index|
  #     COMMUNITY_CATEGORIES.each do |cc|
  #       if community.name.downcase.match(cc)
  #         MixCategory.find_or_create_by!(title: category.title, community_id: community.id, category_id: category.id )
  #       end
  #     end
  #   end
  # elsif category.ref.match('e')
  #   Event.all.each_with_index do |event, index|
  #     EVENT_CATEGORIES.each do |ec|
  #       if event.name.downcase.match(ec) || event.description.downcase.match(ec)
  #         MixCategory.find_or_create_by!(title: category.title, event_id: event.id, category_id: category.id)
  #       end
  #     end
  #   end
  end
end
