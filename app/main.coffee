require ['order!jquery', 'order!bootstrap', 'order!jquery-ui'], ($) ->
	$('.square').tooltip {placement: 'left'}
	$content = $ '#content'
	$('.next').click () ->
		$current = $ '.current'
		$next = $current.next()
		$current.hide "slide", { direction: "left" }, 1000
		setTimeout () ->
			$next.show "slide", { direction: "right" }, 1000, () ->
				$current.removeClass 'current'
				$next.addClass 'current'
			, 300
	$('.previous').click () ->
		$current = $ '.current'
		$previous = $current.prev()
		$current.hide "slide", { direction: "right" }, 1000
		setTimeout () ->
			$previous.show "slide", { direction: "left" }, 1000, () ->
				$current.removeClass 'current'
				$previous.addClass 'current'
			, 300
