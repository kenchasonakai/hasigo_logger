class LogSerializer < ActiveModel::Serializer
  attributes :id, :grnv_bar_info_id, :drank_on
  attribute :created_at, key: :visited_on
  belongs_to :grnv_bar_info
  class GrnvBarInfoSerializer < ActiveModel::Serializer
    attributes :id, :name, :address, :grnv_url, :tel, :opentime, :holiday
  end
end
