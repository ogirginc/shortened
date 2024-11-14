class RedirectionsController < ApplicationController
  allow_unauthenticated_access only: %i[ show ]

  def show
    @short = Short.find(params[:id])

    if @short
      redirect_to @short.for, allow_other_host: true
    else
      render plain: "Link not found", status: :not_found
    end
  end
end
