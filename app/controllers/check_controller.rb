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
        redirect_to check_phase1_path
    elsif current_user.phase2 == true
    	user=Pstaff.find(params[:id])
        user.phase2=true
        user.save
        redirect_to check_phase1_path
    elsif current_user.phase3 == true
    	user=Pstaff.find(params[:id])
        user.phase3=true
        user.save
        redirect_to check_phase1_path
    else
    end
    end
end
