<cfimport prefix="mango" taglib="../../tags/mango" />
<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
<cfimport prefix="template" taglib="." />
<cfimport prefix="fg" taglib="assets/customtags" />

<!--- dynamic pods! --->
<mangox:PodGroup locationId="sidebar" template="index">

	<mangox:TemplatePod id="search">
		<div class="pod" id="search">
			<form id="searchForm" method="get" action="http://www.google.com/search">
				<div class="input-append">
					<input type="text" class="input-append" name="q" id="term" value="" placeholder="Search for..." />
					<button class="btn btn-success input-append"><i class="icon icon-search"></i></button>
				</div>
				<input type="hidden" name="q" value="site:fusiongrokker.com" />
			</form>
		</div>
	</mangox:TemplatePod>

	<mangox:TemplatePod id="subscribe">
		<div class="pod">
			<form id="subscribeForm" method="get" action="/generic.cfm">
				<div class="input-append">
					<input name="email" class="input-append" id="subscribeemail" type="email" value="" placeholder="Subscribe: you@aol.com" />
					<button class="btn btn-success input-append"><i class="icon icon-envelope"></i></button>
				</div>
				<input name="event" value="scribe-subscribe" type="hidden">
			</form>
		</div>
	</mangox:TemplatePod>

	<mangox:TemplatePod id="archives">
		<mango:Archive>
	        <p><a class="btn btn-block btn-inverse" href="/page/archives">Browse older entries</a></p>
		</mango:Archive>
	</mangox:TemplatePod>

	<mangox:TemplatePod id="your-host">
		<img src="<cfoutput>#variables.skinUrl#assets/img/headshot-medium.png</cfoutput>" class="adam" />

		<p id="elsewhere">
			<a rel="tooltip" href="http://twitter.com/AdamTuttle" data-toggle="tooltip" data-placement="bottom" title="Follow me on Twitter"><i class="icon icon-2x icon-twitter"></i></a>
			<a rel="tooltip" href="http://facebook.com/adam.tuttle" data-toggle="tooltip" data-placement="bottom" title="Me on Facebook"><i class="icon icon-2x icon-facebook"></i></a>
			<a rel="tooltip" href="https://plus.google.com/u/0/101395374163833780485/posts" data-toggle="tooltip" data-placement="bottom" title="Me on Google Plus"><i class="icon icon-2x icon-google-plus"></i></a>
			<a rel="tooltip" href="http://delicious.com/fusiongrokker" data-toggle="tooltip" data-placement="bottom" title="My Shared Links"><i class="icon icon-2x icon-pushpin"></i></a>
			<a rel="tooltip" href="http://fusiongrokker.tumblr.com" data-toggle="tooltip" data-placement="bottom" title="Cameraphone Pics"><i class="icon icon-2x icon-mobile-phone"></i></a>
			<a rel="tooltip" href="http://flickr.com/photos/tuttletree" data-toggle="tooltip" data-placement="bottom" title="My Photography"><i class="icon icon-2x icon-camera"></i></a>
			<a rel="tooltip" href="http://www.goodreads.com/user/show/4654226-adam-tuttle" data-toggle="tooltip" data-placement="bottom" title="What I'm Reading"><i class="icon icon-2x icon-book"></i></a>
			<a rel="tooltip" href="https://www.fuelly.com/driver/adamtuttle" data-toggle="tooltip" data-placement="bottom" title="My Truck"><i class="icon icon-2x icon-dashboard"></i></a>
			<a rel="tooltip" href="http://www.last.fm/user/TuttleTree" data-toggle="tooltip" data-placement="bottom" title="My Musical Taste"><i class="icon icon-2x icon-music"></i></a>
			<a rel="tooltip" href="http://www.linkedin.com/in/adamtuttle" data-toggle="tooltip" data-placement="bottom" title="Me on LinkedIn"><i class="icon icon-2x icon-linkedin"></i></a>
			<a rel="tooltip" href="http://feeds2.feedburner.com/FusionGrokker/" data-toggle="tooltip" data-placement="bottom" title="FusionGrokker.com RSS"><i class="icon icon-2x icon-rss"></i></a>
		</p>

		<div class="clearfix"></div>
	</mangox:TemplatePod>

	<!--- output all the pods, including the ones added by plugins --->
	<mangox:Pods>
		<mangox:Pod>
			<mangox:PodProperty content />
		</mangox:Pod>
	</mangox:Pods>
</mangox:PodGroup>


<!---
<hr class="bufferTop" />

<div class="events">
	<h3>Events:</h3>

	<!-- lanyrd: conferences -->
	<script src="http://cdn.lanyrd.net/badges/person-v1.min.js"></script>
	<div class="lanyrd-target-splat"><a href="http://lanyrd.com/people/adamtuttle/" class="lanyrd-splat lanyrd-number-3 lanyrd-context-future lanyrd-template-detailed lanyrd-type-all" rel="me"></a></div>

	<!-- cfobjective -->
	<a href="http://www.cfobjective.com" title="I'm speaking at cf.Objective() 2013!"  target="_blank"><img border="0" height="125" width="125" alt="I'm speaking at cf.Objective() 2013!" src="http://www.cfobjective.com/cfo/assets/Image/badges/2013/CFObjective_speaker_125x125.png" /></a>
</div>
--->
<hr id="endEvents" />
<cfoutput>
	<div class="banners">
		<p>
			<a href="http://www.learncfinaweek.com"
				title="Free eBook &amp; Training: Learn ColdFusion in a Week"
			><img src="//fusiongrokker.com/assets/content/learn-cf-250x250-dark.png"
				alt="Free eBook &amp; Training: Learn ColdFusion in a Week"
				width="200" height="200"
			/></a>
		</p>
		<p>
			<a href="http://github.com/atuttle/Taffy"
				title="Taffy: A ColdFusion Framework for creating REST web services"
			><img border="0" src="#variables.skinurl#assets/img/Taffy.png"
				alt="Taffy: A ColdFusion Framework for creating REST web services"
				width="200" height="200"
			/></a>
		</p>
	</div>
</cfoutput>