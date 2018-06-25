Rails.application.routes.draw do
  get '/' => 'home#index'    #해쉬 정의 가능
  #홈 컨트롤러에 인덱스 액션으로 보내라.
  #home 컨트롤러 안에 index 액션(메소드)  ==> cotrollers/home_controller.rb에서 메소드(액션)정의
  #get 'home/lotto'  => 'home#lotto'  #home 컨트롤러 안에 lotto 액션(메소드)
  get 'home/lotto'  #위에 해쉬 좌우가 이름이 같으면 그냥 이렇게만 해도 된다.
  get '/lunch' => 'home#lunch'
  get 'home/search'
end