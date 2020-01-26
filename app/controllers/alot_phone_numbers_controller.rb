class AlotPhoneNumbersController < ApplicationController
	

    #GET /phones  Lists all allotted numbers. Eg: {phones: [1234567890, 1111111111]}

	def index
	  @phones = AlotPhoneNumber.where(allotted: true).pluck(:phone_number)
      render json: @phones
	end

    def create
      @phones = AlotPhoneNumber.where(allotted:false)
      sample_phone_number_allotted = @phones.sample
      if sample_phone_number_allotted.present?
         sample_phone_number_allotted.update_attributes(allotted:true)
         render :json => { message: "A random phone numnber has been allotted to you which is "+ sample_phone_number_allotted.phone_number, :status => 200 }

      else
      	render :json=>{message: "No phone number present", :status=> 204}
      end
    end

    def update
      @phone= AlotPhoneNumber.where(phone_number: params[:phone_number], allotted: false).first
      if @phone.present?
         @phone.update_attributes(allotted: true)
         render :json => { message: "Requested phone number allocated", :status => 200 }

      else
      	@phones = AlotPhoneNumber.where(allotted: false).sample
      	@phones.update_attributes(allotted:true)
      	render :json=>{message: "A random unallotted number is given to you which is"+ @phones.phone_number, :status=> 200}

       end
    end
end
