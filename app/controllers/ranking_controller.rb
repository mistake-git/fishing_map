class RankingController < ApplicationController
  
  def fish_size_ranking
      @post = Post.find_by(id: params[:id])
      @posts = Post.where(name: @post.name).where("size IS NOT NULL").order(size: 'DESC').limit(8).page(params[:page]).per(8)
      @when_not_text = "サイズが登録された釣果がありません"
  end
  
end