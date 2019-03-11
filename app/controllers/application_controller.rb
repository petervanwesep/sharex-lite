class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index ; end

  def trades
    @direct_trades_to_brokers = {}
    DirectTrade.all.each do |direct_trade|
      @direct_trades_to_brokers[direct_trade] = [direct_trade.seller.broker, direct_trade.buyer.broker]
    end

    render
  end
end