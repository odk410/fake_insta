## Rails

- MVC 패턴을 사용함.

- 설치하기 vagrant 경로에서 rails 설치하기

  ```ruby
  # 1.rails 설치하기
  gem install rails -v 4.2.9
  ```

  ​

- app (controllers, models, views), config(routes.rb), db를 많이 사용한다.

- config -> routes에서 시작한다.

  여기서 do '/' 에 관한 것을 설정해준다.

- 프로젝트 만들기

  ```ruby
  # 1.프로젝트 만들기
  rails new [프로젝트 명]

  # 2.프로젝트 지우기
  rm -rf [프로젝트명]

  # 3.번들 스킵하기
  #번들설치를 처음에 했기에 빠르게 생성된다.
  rails new [프로젝트 명] --skip-bundle

  # 4.Controller 만들기
  rails generate controller [컨트롤러 명]

  # 5.실행하기
  # s : server, b : bind
  rails s -b 0.0.0.0  
  ```

- 약속1

  app->controller->concerns->home_controller의 def 이름과 views의 erb의 이름이 같으면

  코드 erb :xxx가 없어도 가능하다.

#Fake Instagram

## 1. User
- rails g controller users
- rails g model User
- routes
```
get '/signup' => 'users#signup' # 회원가입 <form>으로 정보 받아서 /register로 넘겨준다. (email, password)
get '/register' => 'users#register' #날아온 정보를 User DB에 저장한다.
get '/user_list' => 'users#list' #모든 유저의 정보를 보여준다.

##과제
get '/login' => 'users#login' #로그인 창에서 로그인 정보를 받아서 /login_process로 넘겨준다.
get '/login_process' => 'users#login_process' #로그인 시키는 로직을 통해 로그인 시킨다.
get '/logout' => 'user#logout' #로그아웃 (session.clear)
```

## 2. Home controller
### 1. /lotto
- 랜덤 로또 번호를 출력해주는 액션을 만드세요.
- get '/lotto' => 'home#lotto'

### 2. /lunch
- 랜덤 메뉴를 출력해주는 액션을 만드세요.
- get 'lunch' => 'home#lunch'

### 3. /search
- fake naver search를 해주는 액션을 만드세요.
- get '/search' => 'home#search'
- search.erb -> 검색어를 받아 네이버 검색 결과를 보여주는 <form>을 만들어 준다.
