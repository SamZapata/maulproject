module CommunitiesHelper
  def verifyFields(community)
    if community.address.present?
      1
    else
      23
    end
  end
end
