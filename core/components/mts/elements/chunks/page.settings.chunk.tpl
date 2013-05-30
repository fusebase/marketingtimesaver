[[~[[+mts.project]]? &scheme=`full`]]
<ul id="mts-settings-nav-tabs" class="nav nav-tabs">
	<li class="active"><a href="#general" data-toggle="tab">General</a></li>
	<li><a href="#profile" data-toggle="tab">Profile</a></li>
	<li><a href="#messages" data-toggle="tab">Messages</a></li>
	<li><a href="#settings" data-toggle="tab">Settings</a></li>
</ul>
<form id="mts-settings" class="form form-horizontal" method="POST">
	<input type="hidden" name="token" value="[[+mts.token]]">
	<div class="tab-content">
		<div class="tab-pane active" id="general">
			<fieldset>
				<div class="control-group">
					<label class="control-label" for="mtsProjectName">Name</label>
					<div class="controls">
						<input type="text" name="mtsProjectName" value="[[getResourceField? &id=`[[+mts.project]]]` &field=`pagetitle`]]">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="mtsProjectTitle">Title</label>
					<div class="controls">
						<input type="text" name="mtsProjectTitle" value="[[getResourceField? &id=`[[+mts.project]]]` &field=`longtitle`]]">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="mtsProjectSubomain">Subdomain</label>
					<div class="controls">
						<input type="text" name="mtsProjectSubomain" value="[[getResourceField? &id=`[[+mts.project]]]` &field=`menutitle`]]">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="mtsProjectDomain">Custom Domain</label>
					<div class="controls">
						<input type="text" name="mtsProjectDomain" value="[[getResourceField? &id=`[[+mts.project]]]` &field=`alias`]]">
					</div>
				</div>		
			</fieldset>
		</div>
		<div class="tab-pane" id="profile">
		</div>
		<div class="tab-pane" id="messages">
		</div>
		<div class="tab-pane" id="settings">
		</div>
	</div>
	<div class="control-group">
		<div class="controls">
			<button type="submit" class="btn btn-primary">Save</button>
		</div>
	</div>
</form>