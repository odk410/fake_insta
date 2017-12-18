class HomeController < ApplicationController
  # Home 컨트롤러에서 동작할 액션을 하나 만든다.
  def index
    render :index
  end

  def hello
    @name = params[:name]
  end

  def lotto
    @lotto = (1..45).to_a.sample(6).sort
    #render :lotto 이름만 같게 해주면 이걸 지워도 된다.
    #render :ruky 이름이 다를 경우 view의 ruky에서 실행 할 것이다.
  end

  def lunch
    @lunch = ["탕수육", "짜장면", "짬뽕"].sample
  end

  def seach
    
  end
end
