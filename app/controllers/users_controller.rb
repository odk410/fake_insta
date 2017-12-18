class UsersController < ApplicationController
  def signup
    #회원가입 정보를 받아 register로 넘김

  end

  def register
    #날아온 정보를 User DB에 저장

      @email = params[:email]
      @password = params[:password]

      User.create(
        :email => params[:email],
        :password => params[:password]
      )
  end

  def list
    #모든 유저의 정보를 보여준다.

    @users = User.all
    render :user_list
  end

  def login
    # 로그인 창에서 로그인 정보를 받아서 /login_process로 넘겨준다.

  end

  def login_process

    @message = ""

    # 로그인 시키는 로직을 통해 로그인을 시킨다. (session[:user_id])
    if User.where(:email => params[:email])
      if User.where(:email => params[:email]).first.password == params["password"]
        session[:email] = params["email"]
        @message = "로그인이 되었습니다."
      else
        @message = "비밀번호가 틀렸습니다."
      end
    else
      @message = "해당하는 이메일의 유저가 없습니다."
    end

  end

  def logout
    # 로그아웃 (session.clear)
    session.clear
    redirect_to '/'
  end

end
