{if $addons.lib_jquery_match_height.match_height_enable == "Y"}
{script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.matchHeight/0.7.2/jquery.matchHeight-min.js"}

{literal}
<script type="text/javascript" async>
var matchHeights = '.matchheight, .matchHeight, .MatchHeight';

function matchElement() {
	$(matchHeights).matchHeight({
		byRow: true
	});
}

matchElement();

$(window).resize(_.debounce(function(){
	matchElement();
}, 100)).trigger('resize');
</script>
{/literal}
{/if}