#encoding: utf-8
class ProposesController < ApplicationController
  def index
    @proposes = Propose.all.reverse
    @propose = Propose.new
  end

  def create
    @propose = Propose.new(params[:propose])
    if @propose.save
      @save = true
      @msg = "등록되었습니다."
    else
      @save = false
      @msg = "등록에 실패했습니다. 다시 시도해주세요."
    end
  end
end
