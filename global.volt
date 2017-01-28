<!doctype html>
<html class="no-js" lang="en">
  <head>

    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Accessible garden furniture by GrowbagBuddy, fits standard size grow bag from any garden centre." />
    <meta name="keywords" content="raised, hanging, window, box, wooden, planter, grow, bag, buddy, warsash, southampton, hampshire, artificial, grass, custom, build, workshop" />
    <meta name="author" content="Joe Doherty <io@spjz.uk>" />

    {{ get_title() }}
    {{ stylesheet_link('css/app.css') }}
    {{ stylesheet_link('bower_components/font-awesome/css/font-awesome.min.css') }}
    {{ stylesheet_link('https://fonts.googleapis.com/css?family=Oswald') }}

  </head>

  <body>

		<div class="top-bar">
			<div class="top-bar-left">
				<ul class="menu">
					<li><a href="/"><img class="logo-small" src="img/layout/buddy.png" title="Growbag Buddy" /></a></li>
					<li><a href="/"><img class="logo-small" src="img/layout/logo.png" title="GrowbagBuddy" /></a></li>
				</ul>
			</div>
			<div class="top-bar-right">

				<div class="row columns align-left">
					<ul class="pages menu align-right">
						<li><a href="/gallery">Gallery</a></li>
						<li><a href="/contact">Contact</a></li>
						<li><a href="/stockists">Stockists</a></li>
						<li><a href="/products">Products</a></li>
						<li><a href="/about">About</a></li>
					</ul>
				</div>

				<div class="row">
					<ul class="icons menu align-right">
						<li><a href="mailto:info@growbagbuddy.com" class="icon-email"><i class="fa fa-envelope"></i></a></li>
						<li><a href="https://facebook.com/growbagbuddy" target="_blank" class="icon-facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="https://twitter.com/growbagbuddy" target="_blank" class="icon-twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="https://youtube.com/growbagbuddy" target="_blank" class="icon-youtube"><i class="fa fa-youtube"></i></a></li>
					</ul>
				</div>

			</div>
		</div>

		{{ content() }}

    <div class="callout large footer">
      <div class="row">
        <div class="large-6 columns">
          <img src="img/layout/logo.png" title="GrowbagBuddy" />
        </div>
        <div class="large-6 columns text-right">
          <ul class="menu vertical">
            <li><a href="#">Terms and Conditions</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="contact.html">Contact Us</a>
          </ul>
        </div>
      </div>
    </div>

  {{ javascript_include('bower_components/jquery/dist/jquery.js') }}
  {{ javascript_include('bower_components/what-input/what-input.js') }}
  {{ javascript_include('bower_components/foundation-sites/dist/foundation.js') }}
  {{ javascript_include('js/app.js') }}

  </body>
</html>
