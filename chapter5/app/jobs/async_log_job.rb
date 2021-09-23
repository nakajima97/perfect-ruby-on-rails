class AsyncLogJob < ApplicationJob
  queue_as :default

  def perform(message: "hello")
    # DBに保存する処理
    AsyncLog.create!(message: message)
  end
end
