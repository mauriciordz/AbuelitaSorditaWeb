get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end


post '/abuelita' do
  # count =  0
  # until count  == 3
    # puts "Dile algo  la abuela: "
     user_input = params[:user_input]
    # palabras = gets.chomp
    # p palabras
    
    case 
      when user_input == user_input.upcase && user_input != "BYE TQM"
        @abuelita = "NO, NO DESDE 1983"
      when user_input == user_input.downcase 
        @abuelita =  "HUH?! NO TE ESCUCHO, HIJO!"
      when user_input == "BYE TQM"
          # count += 1
        @abuelita = "BYE MIJITO!"
        redirect to ("/?abuelita=#{@abuelita}")


      else
        @abuelita = "HUH?! NO TE ESCUCHO, HIJO!" 
    end
  redirect to ("/?abuelita=#{@abuelita}")
end


# 'http://media3.giphy.com/media/jYAGkoghdmD9S/giphy.gif'




  # puts "#{user_input}"
 # send_file 'foo.png', :type => :jpg
