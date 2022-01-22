class RecordsController < ApplicationController
    def create
        @patient = Patient.find(params[:patient_id])
        @record = @patient.records.create(record_params)
        redirect_to article_path(@patient)
    end
    
    private
    def record_params
        params.require(:record).permit(right_eye_sph:string 
                                            right_eye_cyl:string 
                                            right_eye_axis:string 
                                            left_eye_sph:string 
                                            
                                            left_eye_cyl:string 
                                            left_eye_axis:string 
                                            
                                            both_eyes_add:string)
    end
end
