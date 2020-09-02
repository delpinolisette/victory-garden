class ConnectionsController < ApplicationController
 # before_action :set_connection, only: [:show, :edit, :update, :destroy]

  before_action :set_tree
  before_action :set_leaf
  before_action :authenticate_user

  def add_leaf_to_tree
    if !(@tree.leafs.include?(@leaf))
      @tree.leafs << @leaf
    end
    redirect_to @tree
  end

  private
  
  def set_tree
    @tree = Tree.find(params[:tree_id])
  end

  def set_leaf
    @leaf = Leaf.find(params[:leaf_id]) 
  end

  # Use callbacks to share common setup or constraints between actions.
 # def set_connection
  #  @connection = Connection.find(params[:id])
  #end

    # Only allow a list of trusted parameters through.
 #   def connection_params
 #     params.require(:connection).permit(:leaf_id, :tree_id)
 #   end
end
