class EmailListsController < ApplicationController
  def index
    @email_lists = EmailList.all
    render json: @email_lists
  end

  def create
    @email_list = EmailList.new(email_list_params)

    if @email_list.save
      render json: @email_list, status: :created
    else
      render json: @email_list.errors, status: :unprocessable_entity
    end
  end

  private

  def email_list_params
    params.require(:email_list).permit(:address)
  end
end
