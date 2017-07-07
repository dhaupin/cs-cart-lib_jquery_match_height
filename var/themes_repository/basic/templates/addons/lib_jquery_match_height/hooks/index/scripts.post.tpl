<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.matchHeight/0.7.2/jquery.matchHeight-min.js"></script>

{literal}
<script type="text/javascript" async>
function matchElement() {
	$('.matchheight, .matchHeight, .MatchHeight').matchHeight({
		byRow: true
	});
}

if ($('.MatchHeight') !== 'undefined') {
	matchElement();

	$(window).resize(_.debounce(function(){
		matchElement();
	}, 100)).trigger('resize');
}
</script>
{/literal}