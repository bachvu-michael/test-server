<cfparam name="args.title" default="" />
<cfparam name="args.pricelist" default="" />

<style>
	.common-widget-price-table .price-wrap {
		height: 100%;
		padding: 10px 30px;
		border: 1px solid #b8c0bc;
		border-radius: 8px;
		-webkit-box-shadow: 0 0 7px rgba(0,0,0,.2);
    	-moz-box-shadow: 0 0 7px rgba(0,0,0,.2);
		box-shadow: 0 0 7px rgba(0,0,0,.2);
		display: flex;
		flex-direction: column;
		justify-content: space-between;
	}
	.common-widget-price-table .price-wrap .price {
		font-size: 42px;
		color: #008bda;
	}
	.common-widget-price-table .price-wrap .button-div {
		margin-bottom: 23px;
	}
	.common-widget-price-table .row-eq-height {
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		flex-wrap: wrap;
	}

	.common-widget-price-table .row-eq-height > [class*='col-'] {
		display: flex;
		flex-direction: column;
	}
</style>

<cfoutput>
	<h2>#args.title#</h2>
	<div class="row text-center common-widget-price-table">
		<cfif len(args.pricelist)>
			<cfset args.column = 12 / arrayLen( listToArray( args.pricelist ) )>
			<div class="row row-eq-height">
				#renderView( view="/widgets/price_table/_price", args = args )#
			</div>
		</cfif>
	</div>
</cfoutput>