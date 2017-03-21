class UploadController < ApplicationController
  def new

  	if logged_in?
  		# @upload = UploadImage.new
  	else
  		redirect_to root_url
  	end
  end

  def create

  	require 'fileutils'

	tmp = params[:upload_image][:image].tempfile

	if (params[:upload_image][:address]).empty?
		directory = 'upload/pics/public/';
	else
		directory = 'upload/pics/' + params[:upload_image][:address] + '/';
	end

	FileUtils.mkdir_p directory

	file = File.join(directory, params[:upload_image][:image].original_filename)

	flash[:notice] = "File uploaded"

	FileUtils.cp tmp.path, file

	redirect_to canvas_url

	# YOUR PARSING JOB
  end

end
