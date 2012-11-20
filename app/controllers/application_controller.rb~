class ApplicationController < ActionController::Base
	protect_from_forgery
	include SessionsHelper

	before_filter :set_locale
	#set locale of login users

        def set_locale
         I18n.locale = params[:locale] || I18n.default_locale
        end

#	#get accept language from HTTP REQUEST
#	private
#		def extract_locale_from_accept_language_header
#			request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
#		end


end
