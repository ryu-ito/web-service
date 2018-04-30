Rails.application.routes.draw do
  devise_for :users
  root to: "hello#index"

  #mypage関するページ
  get "/mypage/index" => "mypage#index"



  #投稿ページ表示
  get "/practices/new" => "practices#new"
  #投稿し、ホームにリダイレクト
  post "/practices/new" => "practices#create"
  #投稿一覧
  get "/practices/index" => "practices#index"

end
