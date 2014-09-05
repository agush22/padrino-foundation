Roca::App.controllers :pages do

  get :index, :map => '/' do
    render 'pages/index'
  end

  get :about, :map => '/about' do
    render 'pages/about'
  end

  get :projects, :map => '/projects' do
    render 'pages/projects'
  end

end
