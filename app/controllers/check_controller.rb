class CheckController < ApplicationController
	def phase1
      @phases= Pstaff.all

    end
    def phase2
      @phases= Pstaff.all

    end
    def phase3
      @phases= Pstaff.all

    end
    def admin
      @phases= Pstaff.all

    end
    
    def approve
    if current_user.phase1 == true
    	user=Pstaff.find(params[:id])
        user.phase1=true
        user.save
        id =user.user_id
        x = User.find(params[:id])

        NotificationMailer.with(user: x).approve_email.deliver

        redirect_to check_phase1_path
    elsif current_user.phase2 == true
    	user=Pstaff.find(params[:id])
        user.phase2=true
        user.save
        redirect_to check_phase2_path
    elsif current_user.phase3 == true
    	user=Pstaff.find(params[:id])
        user.phase3=true
        user.save
        redirect_to check_sticker_path
    else
    end
    end


    def search

    if params[:search].blank?  
    redirect_to(check_phase3_path, alert: "Empty field!") and return  
    else  
    @parameter = params[:search]
    @result = Pstaff.all.where(:vichel_no => @parameter)
    
    end  
    end

    def sticker

     

    end

    def new
        @pstaff = Pstaff.all

    end
        



end
