class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    @coupon = Coupon.new(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to @coupon and return if @coupon.save
    redirect_to new_coupon_path
  end
end
