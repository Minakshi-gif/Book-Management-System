class BookController < ApplicationController
	def add 
       @book = Book.new
    end

     def show
        @book = Book.find(params[:id])
    end	

    def count
    	@book = Book.count

    end	

    def edit
    	@book = Book.find(params[:id])
    end
       def update
       	 @book = Book.find(params[:id]) 
       	  id = @book.id

          if @book.update_attributes(book_params) 	

        	       redirect_to(action: 'list')
          else
               render('edit')
          end

       end    
     
     def create
       	 @book = Book.new(book_params)  

        if @book.save
        	redirect_to(action: 'list')
        else
        	flash[:notice] = "Error: record not created"
            render(action: 'new')
        end
     end
 

    def delete
    	@book = Book.find(params[:id]) 
    end	

    def destroy
    	bk = Book.find(params[:id]) 
    	bk.destroy
 	
        redirect_to(action: 'list')
       
    end	
  
    def list
    	@book = Book.all
    end	
   
    def new
        @book = Book.new	
    end	
    
    def verify
    	@userlogin = Userlogin.find(userlogin_params) 
    	if @userlogin.username == @userlogin_params[:username]
    		if @userlogin.emailid == @userlogin_params[:emailid]
               if @userlogin.password == @userlogin_params[:password]
    				redirect_to(action:'book/list')

    	else
    	    render('register')
    	   
    	end
    end	   			
   end
 end	

    def book_params
    	params.require(:books).permit(:name, :author ,:price)
    end	
    
    def userlogin_params
    	params.require(:userlogin).permit(:username, :emailid, :password)
    end	

end