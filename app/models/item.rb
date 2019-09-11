class Item < ApplicationRecord
  def item_params
    params.require(:item).permit(:price, :name, :real, :weight, :description)
  end

  validates :price, numericality: { greater_than: 0, allow_nil: true }
  validates :name, :description, presence: true

  belongs_to :category

  after_initialize { puts 'initialized' }
  after_save { puts 'saved' }
  after_create { category.inc(:items_count, 1) }
  after_update { puts 'updated' }
  after_destroy { category.inc(:items_count, -1) }
end
