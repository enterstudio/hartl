jQuery ->
	$('.show-footer').on('show', ->
		$("html, body").animate({ scrollTop: $(document).height() }, "slow"))