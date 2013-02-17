<cfimport prefix="mango" taglib="../../tags/mango" />
<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
<cfimport prefix="template" taglib="." />
<cfimport prefix="fg" taglib="assets/customtags" />

<cfif thisTag.executionMode eq "start">

<cfparam name="attributes.sidebar" default="true" />

<cfsavecontent variable="variables.basepath"><mango:Blog basePath /></cfsavecontent>
<cfset variables.basePath = trim(variables.basePath) />

<cfsavecontent variable="variables.skinurl"><mango:Blog skinurl /></cfsavecontent>
<cfset variables.skinurl = trim(variables.skinurl) />

<cfsavecontent variable="variables.defaultTitle"><mango:Blog title /> &bull; <mango:Blog tagline /></cfsavecontent>
<cfparam name="attributes.title" default="#variables.defaultTitle#" />

<cfsavecontent variable="variables.rssurl"><mango:Blog rssurl /></cfsavecontent>
<cfset variables.rssurl = trim(variables.rssurl) />

<cfsavecontent variable="variables.atomurl"><mango:Blog atomurl /></cfsavecontent>
<cfset variables.atomurl = trim(variables.atomurl) />

<cfsavecontent variable="variables.apiurl"><mango:Blog apiurl /></cfsavecontent>
<cfset variables.apiurl = trim(variables.apiurl) />

<cfsavecontent variable="variables.tmpsearch"><mango:Blog searchUrl /></cfsavecontent>
<cfset variables.tmpsearch = trim(variables.tmpsearch) />

<cfset variables.cssUrl = variables.skinurl & "assets/css" />
<cfset variables.jsUrl = variables.skinurl & "assets/js" />

<cfcontent reset="true" />
<!DOCTYPE html>
<html lang="en">
	<head>
		<cfoutput>
		<meta charset="utf-8">
		<title>#attributes.title#</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="A technical blog by Adam Tuttle">
		<meta name="author" content="Adam Tuttle">

		<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<link href="#variables.cssUrl#/bootstrap.min.css" rel="stylesheet" />
		<link href="#variables.cssUrl#/combined.css" rel="stylesheet" />

		<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="#variables.rssurl#" />
		<link rel="alternate" type="application/atom+xml" title="Atom" href="#variables.atomurl#" />
		<link rel="EditURI" type="application/rsd+xml" title="RSD" href="#variables.apiurl#" />

		<meta property="og:site_name" content="FusionGrokker"/>
		<meta property="og:url" content="http://fusiongrokker.com"/>
		<meta property="og:title" content="FusionGrokker"/>
		<meta property="og:type" content="website"/>
		<meta property="og:image" content="<cfoutput>#variables.skinUrl#assets/img/headshot-medium.png</cfoutput>"/>
		<meta property="og:description" content="A technical blog by Adam Tuttle"/>

		<mango:Event name="beforeHtmlHeadEnd" />
		</cfoutput>
	</head>
	<body id="top"><!-- data-spy="scroll" data-target=".subnav" data-offset="80" -->
		<mango:Event name="beforeHtmlBodyStart" />

		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					<cfoutput>
						<a class="brand" href="#variables.basepath#">FusionGrokker</a>
						<div class="nav-collapse collapse" id="main-menu">
							<ul class="nav" id="main-menu-left">
								<li><a href="#variables.basepath#page/about-me">About Me</a></li>
								<li class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" href="">Projects <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="https://github.com/atuttle/Taffy" target="_blank">Taffy</a></li>
										<li><a href="https://github.com/cfcommunity/Ramen" target="_blank">Ramen</a></li>
										<li><a href="https://github.com/cfcommunity/CFScript-Community-Components" target="_blank">CFScript Community Components</a></li>
										<li class="divider"></li>
										<li><a href="#variables.basepath#page/projects">Mango Plugins &amp; More</a></li>
										<li class="divider"></li>
										<li><a href="https://github.com/atuttle" target="_blank"><i class="icon icon-github-alt icon-large"></i> My Projects on GitHub</a></li>
									</ul>
								</li>
								<li><a href="#variables.basepath#page/presentations">Presentations</a></li>
								<li><a href="#variables.basepath#page/contact-me">Contact</a></li>
								<li><a href="#variables.basepath#page/archives">Archives</a></li>
							</ul>
						</div>
					</cfoutput>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row"><div class="topfix"></div></div>
			<div class="row contentRow">
				<cfif attributes.sidebar><div class="span9"><cfelse><div class="span12"></cfif>
<cfelse>
				</div>
				<cfif attributes.sidebar>
					<div class="span3" id="sidebar">
						<cfinclude template="sidebar.cfm" />
					</div>
				</cfif>
			</div>

			<br/><br/>
			<hr>
			<footer id="footer">
				<p class="pull-right"><a href="#top"><i class="icon icon-circle-arrow-up"></i> Top</a></p>
				<p>
					Made by <a target="_blank" href="http://fusiongrokker.com">Adam Tuttle</a>.
					Based on <a target="_blank" href="http://bootswatch.com/superhero/">Superhero</a>.
					Icons from <a target="_blank" href="http://fortawesome.github.com/Font-Awesome/">Font Awesome</a>.
					Web fonts from <a target="_blank" href="http://www.google.com/webfonts">Google</a>.
				</p>
			</footer>
		</div><!-- /container -->

		<cfinclude template="extralife.cfm" />

		<cfoutput>
			<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
			<script src="#variables.jsUrl#/bootstrap.min.js"></script>
			<script src="#variables.jsUrl#/FG8.min.js"></script>
		</cfoutput>
		<fg:htmlfoot output="true" />
		<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>
</cfif>