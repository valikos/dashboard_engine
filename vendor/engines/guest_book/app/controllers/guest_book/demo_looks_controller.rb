require_dependency "guest_book/application_controller"

module GuestBook
  class DemoLooksController < ApplicationController
    before_action :set_demo_look, only: [:show, :edit, :update, :destroy]

    # GET /demo_looks
    def index
      @demo_looks = DemoLook.all
    end

    # GET /demo_looks/1
    def show
    end

    # GET /demo_looks/new
    def new
      @demo_look = DemoLook.new
    end

    # GET /demo_looks/1/edit
    def edit
    end

    # POST /demo_looks
    def create
      @demo_look = DemoLook.new(demo_look_params)

      if @demo_look.save
        redirect_to @demo_look, notice: 'Demo look was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /demo_looks/1
    def update
      if @demo_look.update(demo_look_params)
        redirect_to @demo_look, notice: 'Demo look was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /demo_looks/1
    def destroy
      @demo_look.destroy
      redirect_to demo_looks_url, notice: 'Demo look was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_demo_look
        @demo_look = DemoLook.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def demo_look_params
        params.require(:demo_look).permit(:title)
      end
  end
end
