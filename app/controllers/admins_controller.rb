#
class AdminsController < ApplicationController
  before_action :may_show_admin, only: [:index, :show]
  before_action :may_destroy_admin, only: [:destroy]

  def index
    @admins = Admin.paginate(page: params[:page])
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def destroy
    Admin.find(params[:id]).destroy
    flash[:success] = 'Admin deleted'
    redirect_to(admins_path)
  end

  private

  def may_show_admin
    return redirect_to(root_path) unless admin_signed_in? == true
  end
  helper_method :may_show_admin

  def no_destroy
    ta = Admin.find(params[:id]) # Target admin
    ca = current_admin
    # Do not delete if:
    # 1.  current_admin is nil OR
    # 2.  Attempting to delete self OR
    # 3.  Not a super admin OR
    # 4.  Target is super admin
    ca.nil? || ca == ta || ca.super != true || ta.super == true
  end

  def may_destroy_admin
    return redirect_to(root_path) if no_destroy == true
  end
  helper_method :may_destroy_admin
end
