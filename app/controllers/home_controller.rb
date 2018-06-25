class HomeController < ApplicationController
    #액션 정의!! (메소드 같은거)
    def index
    #   render 'home/index'  #home폴더 안에 index.erb를 넣겠다는 말과 똑같은말
       #위 코드가 erb :index 하던 거랑 비슷한 거임
    end
    
    def lotto
        #로또 번호 6개 추천하는 ruby 코드 ==> range 쓴다
        @lotto = (1..45).to_a.sample(6)    
        #to_a  : 배열로 한다 / sample(뽑을 개수) :랜덤뽑기
        # render 'home/lotto'     #home 폴더 안에 lotto.erb파일
    end
    
    def lunch
        #점심메뉴 추천 ruby 코드
        #1. 원하는 메뉴를 menu배열에 저장
        #2. menu 에서 랜덤으로 하나를 뽑아 @lunch에 넣어주고
        #3. 'home/lunch'에서 @lunch를 보여준다.
        menu=['만두', '짜장면','연어회','육회','라멘','라면','이색이국요리- 몽골이라든가', '쌀국수', '샤브샤브']
        @lunch = menu.sample
    end
    
    def search
        #form을 통해 검색어를 입력 받아
        #각 naver, daum, google에 넘겨준다.
        
    end
end