{if $addons.lib_jquery_match_height.match_height_enable == "Y"}
	{script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.matchHeight/0.7.2/jquery.matchHeight-min.js"}

	<script type="text/javascript" async>

	var matchByRow = '{$addons.lib_jquery_match_height.match_height_by_row|default:"null" nofilter}',
		matchNoRow = '{$addons.lib_jquery_match_height.match_height_no_row|default:"null" nofilter}';

	{literal}
	if ($.isFunction(_.debounce)) {
	
		matchByRow += ', .matchheight, .matchHeight, .MatchHeight';
		matchNoRow += ', .ty-grid-list__item .ty-grid-list__item-name, .vs-grid .title-price-wrapper';

		function matchElement(elements, rows = true) {
			$(elements).matchHeight({
				byRow: rows
			});
		}

		function matchAll() {
			matchElement(matchByRow, true);
			matchElement(matchNoRow, false);
		}
		
		$(window).resize(_.debounce(function(){
			matchAll();
		}, 100)).trigger('resize');
		
		matchAll();

	} else {
		console.log('Error: jQuery matchHeight requires the _.debounce() function from the Underscore library. Please install or activate the UnderscoreJS addon.');
	}
	{/literal}

	</script>
{/if}