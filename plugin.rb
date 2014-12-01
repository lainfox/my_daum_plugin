# name: Daum video Onebox
# version: 0.1
# authors: Lainfox

# http://tvpot.daum.net/v/ve944f5pFVWFXpVnnWFXSwh
# <iframe title='아이유, 짧지만 듣기좋은 라이브 모음' width='640px' height='360px' src='http://videofarm.daum.net/controller/video/viewer/Video.html?vid=ve944f5pFVWFXpVnnWFXSwh&play_loc=undefined&alert=true' frameborder='0' scrolling='no' ></iframe>

Onebox = Onebox

module Onebox
	module Engine
		class DaumVideoOnebox
			include Engine
			REGEX = /^https?:\/\/(?:tvpot\.)?(?:m\.)?(?:daum\.net\/v\/)([^&|^?]+).*$/
			matches_regexp REGEX

			def to_html
				video_id = @url.match(REGEX)[1]
				video_src = "http://videofarm.daum.net/controller/video/viewer/Video.html?vid=#{video_id}&play_loc=undefined&alert=true"
				"<div class='daum-video'><iframe src='#{video_src}'' width='640' height='360' frameborder='0' allowfullscreen></iframe><p>via <a href='#{@url}'>#{@url}</a></p></div>"
			end

		end
	end	
end
