class TClonesController < ApplicationController
before_action :find_params, only:[:edit, :update, :destroy]
    
    def index
        @contents = TClone.all.order('created_at desc')
    end
    
    def create
        @content = TClone.new(strong_params)
        if @content.save
            redirect_to t_clones_path
        else
            render 'new'
        end
    end
    
    def new
        if params[:back]
            @content = TClone.new(strong_params)
        else
            @content = TClone.new
        end
    end
    
    def edit
    end
    
    def update
        if @content.update(strong_params)
            redirect_to t_clones_path
        else
            render 'edit'
        end
        
    end
    
    def destroy
        @content.destroy
        redirect_to t_clones_path
    end
    
    def confirm
        @content = TClone.new(strong_params)
        render 'new' if @content.invalid?
    end
    
    private
        def strong_params
            params.require(:t_clone).permit(:content)
        end
        
        def find_params
            @content = TClone.find(params[:id])
        end
end
