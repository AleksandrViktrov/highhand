class PagesController < ApplicationController

	include Response
  def canvas
  	@user = current_user

  	if logged_in?

  	else
  		redirect_to root_url
  	end
  end

  def user_textures
  	if (params[:addr]).empty?
  		id = params[:addr]
  	else
  		id='8014_Custer_Rd_Bethesda_MD'
  	end

  	dir 	= directory = 'upload/pics/' + id + '/*.*';
  	if File.directory?(directory)
  		json_response(Dir.glob(dir))
  	else
  		dir 	= directory = 'upload/pics/public/*.*';
  		json_response(Dir.glob(dir))
  	end

  end

  def textures

  	id='8014_Custer_Rd_Bethesda_MD'

  	dir 	= directory = 'upload/pics/' + id + '/*.*';
  	if File.directory?(directory)
  		json_response(Dir.glob(dir))
  	else
  		dir 	= directory = 'upload/pics/public/*.*';
  		json_response(Dir.glob(dir))
  	end

  end
end
