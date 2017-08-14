{if $addons.lib_jquery_match_height.match_height_enable == "Y"}
{* This is a repair for vivashop grid. They set a max-height limit and whitespace on titles. Lame. *}
	<style type="text/css">
		.vs-grid .title-price-wrapper {
			max-height: 300px;
			white-space: normal;
		}
	</style>
{/if}