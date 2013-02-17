<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<template:layout tabs="false" sidebar="false" title="Login &bull; FusionGrokker">
	<h1>Super Secret Administration Area!</h1>
	<div class="post">
		<mango:RequestVar ifExists="errormsg">
			<p class="alert alert-error"><mango:RequestVar name="errormsg" /></p>
		</mango:RequestVar>
		<form action="<mangox:Environment selfUrl />" method="post" id="login_form">
			<p>
				<input name="username" id="username" value="" placeholder="Username" type="text" class="text_input span4" />
				<input name="password" id="password" value="" type="password" placeholder="Password" class="text_input span4" />
			</p>
			<p><button name="login" class="form_submit btn btn-large btn-success" type="submit" id="submit"><i class="icon icon-lock icon-large"></i> Login</button></p>
		</form>
	</div>
</template:layout>
