{script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.matchHeight/0.7.2/jquery.matchHeight-min.js"}

{literal}
<script type="text/javascript" async>
var elements = '.matchheight, .matchHeight, .MatchHeight';

function matchElement() {
	$(elements).matchHeight({
		byRow: true
	});
}

matchElement();

$(window).resize(_.debounce(function(){
	matchElement();
}, 100)).trigger('resize');
</script>
{/literal}
