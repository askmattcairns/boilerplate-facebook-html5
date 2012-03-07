$ ->
	initFacebookShare()
	initLinkTargets()
	
###
Facebook Share
###
initFacebookShare = () ->
	$('.facebook-share').on 'click', (e) ->
		e.preventDefault()
		window.FB.ui(
			{
				method: 'feed'
				name: $(this).attr('data-name')
				link: $(this).attr('data-link')
				picture: $(this).attr('data-picture')
				caption: $(this).attr('data-caption')
				description: $(this).attr('data-description')
			},
			(r) ->
				# Nothing to do here.
		)

###
Link Targets
###
initLinkTargets = () ->
	$('a.external').on 'click', (e) ->
		e.preventDefault()
		window.open $(this).attr('href')
