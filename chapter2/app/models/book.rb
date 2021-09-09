class Book < ApplicationRecord
  enum sales_status: {
    # 予約受付中
    reservation: 0,
    # 販売中
    now_on_sale: 1,
    # 販売終了
    end_of_print: 2
  }

  scope :costly, -> { where("price > ?", 3000) }
  # 検索にヒットするものがなかった場合はnilではなく検索条件を外した結果が返ってくる
  scope :find_price, -> (price) { find_by(price: price)}

  belongs_to :publisher, class_name: "publisher", foreign_key: "publisher_id"
  has_many :book_authors
  has_many :authors, through: :book_authors

  validates :name, presence: true
  validates :name, length: { maximum: 25 }
  validates :price, numericality: { greather_than_or_equal_to: 0 }
  
  # コールバックの練習
  # Catが含まれていたら、"lovely Cat"という文字列に置き換える処理
  before_validation do
    self.name = self.name.gsub(/Cat/) do |matched|
      "lovely #{matched}"
    end
  end

  after_destroy do
    Rails.logger.info "Book is deleted: #{self.attributes}"
  end
end