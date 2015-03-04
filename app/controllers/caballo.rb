# my index route for showing all caballos
get '/caballos' do
  @caballos = case params[:order]
  when 'breed'
    Caballo.order(:breed)
  else
    Caballo.order(:name)
  end

  erb :"/caballos/index"
end

get '/caballos/new' do
  if request.xhr?
    erb :"/caballos/new", layout: false
  else
    erb :"/caballos/new"
  end
end

post '/caballos' do

  if request.xhr?
    caballo = Caballo.create(params[:caballo])
    erb :"caballos/_caballo", locals: {partial_caballo: caballo}, layout: false
  else
    redirect '/caballos'
  end
end

# my show route for one caballo
get '/caballos/:caballo_id' do
  @caballo = Caballo.find(params[:caballo_id])

  erb :"/caballos/show"
end
