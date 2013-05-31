<p>[[~[[+mts.project]]? &scheme=`full`]]</p>
<ul id="mts-settings-nav-tabs" class="nav nav-tabs">
	<li class="active"><a href="#general" data-toggle="tab">General</a></li>
	<li><a href="#design" data-toggle="tab">Design</a></li>
	<li><a href="#membership" data-toggle="tab">Membership</a></li>
	<li><a href="#facebook" data-toggle="tab">Facebook</a></li>
	<li><a href="#seo" data-toggle="tab">SEO</a></li>
	<li><a href="#legal" data-toggle="tab">Legal</a></li>
</ul>
<form id="mts-settings" action="projects/settings" class="form form-horizontal row-fluid" method="POST">
	<input type="hidden" name="token" value="[[+mts.token]]">
	<div class="tab-content">
		<div class="tab-pane active" id="general">
			<fieldset>
				<div class="control-group required">
					<label class="control-label" for="mts_project_name">Name</label>
					<div class="controls">
						<input type="text" name="mts_project_name" class="span4" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`pagetitle`]]" data-toggle="tooltip" title="The name is just for your own reference, we won't show it to your visitors.">
					</div>
				</div>
				<div class="control-group required">
					<label class="control-label" for="mts_project_title">Title</label>
					<div class="controls">
						<input type="text" name="mts_project_title" class="span4" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`longtitle`]]" data-toggle="tooltip" title="This is the title of your website that your visitors will see in their web browser.">
					</div>
				</div>
				<div class="control-group required">
					<label class="control-label" for="mts_project_subdomain">Subdomain</label>
					<div class="controls">
						<input type="text" name="mts_project_subdomain" class="span4" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`menutitle`]]" data-toggle="tooltip" title="Your website will be created at subdomain.marketingtimesaver.com">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="mts_project_domain">Domain</label>
					<div class="controls">
						<input type="text" name="mts_project_domain" class="span4" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`alias`]]" data-toggle="tooltip" title="Optional, but highly recommended. Further setup is required with your DNS provider.">
					</div>
				</div>		
			</fieldset>
		</div>
		<div class="tab-pane" id="membership">
			<fieldset>
				<div class="control-group">
					<label class="control-label" for="mts_support_name">Support Name</label>
					<div class="controls">
						<input type="text" name="mts_support_name" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`mts_support_name` &isTV=`1`]]">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="mts_support_email">Support Email</label>
					<div class="controls">
						<input type="text" name="mts_support_email" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`mts_support_email` &isTV=`1`]]">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="mts_member_welcome_message">Welcome Message</label>
					<div class="controls">
						<textarea name="mts_member_welcome_message" class="span4">[[getResourceField? &id=`[[+mts.project.id]]` &field=`mts_member_welcome_message` &isTV=`1`]]</textarea>
					</div>
				</div>
			</fieldset>
		</div>
		<div class="tab-pane" id="facebook">
			<fieldset>
				<div class="control-group">
					<label class="control-label" for="mts_fb_application_id">Application Id</label>
					<div class="controls">
						<input type="text" name="mts_fb_application_id" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`mts_fb_application_id` &isTV=`1`]]">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="mts_og_title">Title</label>
					<div class="controls">
						<input type="text" name="mts_og_title" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`mts_og_title` &isTV=`1`]]">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="mts_og_description">Description</label>
					<div class="controls">
						<input type="text" name="mts_og_description" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`mts_og_description` &isTV=`1`]]">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="mts_og_sitename">Site Name</label>
					<div class="controls">
						<input type="text" name="mts_og_sitename" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`mts_og_sitename` &isTV=`1`]]">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="mts_og_image">Image</label>
					<div class="controls">
						<input type="text" name="mts_og_image" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`mts_og_image` &isTV=`1`]]">
					</div>
				</div>
			</fieldset>
		</div>
		<div class="tab-pane" id="seo">
		</div>
		<div class="tab-pane" id="legal">
			<fieldset>
				<div class="control-group">
					<label class="control-label" for="mts_copyright">Copyright</label>
					<div class="controls">
						<input type="text" name="mts_copyright" value="[[getResourceField? &id=`[[+mts.project.id]]` &field=`mts_copyright` &isTV=`1` &processTV=`1`]]">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Disclaimers</label>
					<div class="controls">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>Disclaimer</th>
									<th>Status</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tr><td><a href="#">Terms & Conditions</a></td><td><span class="label label-success">Published</span></td><td><a href="#" class="btn btn-danger btn-small"><i class="halflings-icon trash halflings-icon"></i> </a></td></tr>
							<tr><td><a href="#">Privacy Policy</a></td><td><span class="label">Draft</span></td><td><a href="#" class="btn btn-danger btn-small"><i class="halflings-icon trash halflings-icon"></i></a></td></tr>
							<tr><td><a href="#">Refund Policy</a></td><td><span class="label label-success">Published</span></td><td><a href="#" class="btn btn-danger btn-small"><i class="halflings-icon trash halflings-icon"></i></a></td></tr>
							<tr><td colspan="3"><a href="#" class="btn">Add A Disclaimer</a></td></tr>
						</table>
					</div>
				</div>
			</fieldset>
		</div>
	</div>
	<div class="control-group">
		<div class="controls">
			<button type="submit" class="btn btn-primary">Save</button>
		</div>
	</div>
</form>