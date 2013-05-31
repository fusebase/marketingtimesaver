<style type="text/css">
  .nav-tabs .btn {
    border-bottom: 0px;
  }
  .x-page-preview {
    background: transparent url(https://d3jpl91pxevbkh.cloudfront.net/mts/image/upload/v1359444602/paper_fibers.png);
    border: 1px solid #e0e0e0;
    overflow: hidden;
  }
  .x-page-preview .x-wrapper {
    padding-left: 20px;
    padding-right: 20px;
    padding-bottom: 20px;
  }
  .x-page-preview .x-member-profile-nav {
    display: none;
  }
  .x-wizard-video-options {
    display: table;
    height: 371px;
    width: 100%;
    background-color: #333;
    margin-bottom: 20px;
  }
  .x-wizard-video-options .x-wizard-video-option-list {
    color: #fff;
    display: table-cell;
    vertical-align: middle;
    text-align: center;
    margin: 0;
    line-height: 1.5;
    font-size: 24px;
    font-weight: bold;
  }
  .x-wizard-video-options .x-wizard-video-option-list span {
    display: block;
    font-size: 14px;
    line-height: 1.3;
    font-weight: normal;
    padding-left: 20px;
    padding-right: 20px;
  }
  .x-wizard-video-option {
    padding: 30px;
    color: #fff;
    text-align: left !important;
  }
  .x-wizard-video-option h3 {
    font-weight: bold;
	color: #fff !important;
    border-bottom: 1px solid #909090;
    margin-bottom: 20px;
	margin-top: 0px;
  }
  .x-wizard-video-option form {
    margin-top: 20px;
  }
  .x-video-loading {
    text-align: center;
    display: table-cell;
    vertical-align: middle;
  }
  .x-video-loading img {
    width: 128px !important;
    height: 128px !important;
  }
  .x-video-delete {
    background-color: #a0a0a0;
    border-radius: 0px 3px 3px 0px;
    padding: 3px;
    margin-right: -18px;
    opacity: .5;
  }
  .x-wizard-training-controls {
    padding: 4px 10px;
    margin-top: 20px;
    background-color: #e0e0e0;
    border-radius: 4px;
    cursor: move;
  }
  .x-wizard-training-minimize .x-member-video-wrapper,
  .x-wizard-training-minimize .x-member-content-wrapper,
  .x-wizard-training-minimize .x-member-downloads {
    display: none;
  }
  .x-integration-form,
  .x-integration-instructions {
    display: none;
  }
  .x-integration-instructions h4 {
    margin-top: 0px;
    line-height: 1.1;
  }
  .x-wizard-file-uploader {
    padding: 10px 10px 1px;
    background-color: #f0f0f0;
    border-radius: 4px;
  }
  .x-wizard-file-uploader h4 {
    margin: 0;
    line-height: 1;
  }
  .cke_editable.cke_editable_inline {
    cursor: pointer;
  }
  .cke_editable.cke_editable_inline.cke_focus {
    box-shadow: inset 0px 0px 20px 3px #ddd, inset 0 0 1px #000;
    outline: none;
    background: #eee;
    cursor: text;
  }
  .cke_editable_inline pre {
    white-space: pre-wrap;
    word-wrap: break-word;
  }
  .x-member-training-wrapper {
    margin-bottom: 30px;
  }
  .x-download {
    cursor: move;
  }
  .x-wizard-media-browser {
    margin: 10px -20px 0px -5px;
    max-height: 290px;
    overflow: auto;
    text-align: center;
  }
  .x-wizard-media-browser .x-video {
    margin-bottom: 4px;
  }
  .x-wizard-media-browser h4 {
    font-size: 12px;
    margin: 0px 0px 16px;
    line-height: 1.1;
    -ms-word-break: break-all;
    word-break: break-all;
    word-break: break-word;
    -webkit-hyphens: auto;
    -moz-hyphens: auto;
    hyphens: auto;
  }
  .x-media-browser-item-wrapper {
    margin: 0 !important;
  }
  .x-media-browser-item {
    padding: 5px;
  }
</style>
<ul class="nav nav-tabs">
  <li class="active"><a href="#step1" data-toggle="tab"> Step 1 - Branding</a></li>
  <li><a href="#step2" data-toggle="tab"> Step 2 - Purchase</a></li>
  <li><a href="#step3" data-toggle="tab"> Step 3 - Content</a></li>
  <li><a href="#step4" data-toggle="tab"> Step 4 - Integration</a></li>
  <li class="pull-right">[[+object.wizard_next_link]]</li>
  <li class="pull-right"><a href="[[+object.edit_link]]" class="btn">Edit Page Details</a></li>
  <li class="pull-right"><a href="[[+x_page.content_preview_url]]" target="_blank" class="btn">View Content Pages</a></li>
  <li class="pull-right"><a href="[[+x_page.preview_url]]" target="_blank" class="btn">View Purchase Page</a></li>
</ul>
<div class="tab-content">
  <div class="tab-pane active" id="step1">
    <label>Upload Banner</label>
    <p><small>Your banner should be at least 640 pixels wide. Larger is ok, but we will automatically resize it to 640 pixels.
      <br>It can be as tall as you'd like, but 140 - 200 pixels generally looks good.
      </small></p>
    [[!+member_page.banner]]
	<div class="x-banner-upload-progress hide">
	    <h4>Uploading...</h4>
		<div class="progress progress-striped active">
		  <div class="bar"></div>
		</div>
	  </div>
    <form id="x-banner-upload-form" action="http://api2.transloadit.com/assemblies" enctype="multipart/form-data" method="POST">
      <input type="hidden" name="params" value="[[!+wizard.transloadit_banner_params]]">
      <input type="file" name="my_file">
      <input type="submit" class="btn btn-success" value="Upload">
    </form>
  </div>
  <div class="tab-pane" id="step2">
    <div class="x-page-preview">
      <div class="x-wrapper">
	[[!$x.layout.member1.purchase]]
      </div>
    </div>
  </div>
  <div class="tab-pane" id="step3">
    <div class="x-page-preview">
      <div class="x-wrapper">
	[[!$x.layout.member1.content]]
      </div>
    </div>
  </div>
  <div class="tab-pane" id="step4">
    <div class="row-fluid">
      <div class="span3">
	<label>Choose Your Payment Provider</label>
	<select name="integration">
	  <option></option>
	  <option value="paypal" [[!+member_page.paypal_selected]]>PayPal</option>
	  <!--<option value="1shoppingcart" [[!+member_page.oneshoppingcart_selected]]>1ShoppingCart</option>-->
	</select>
      </div>
      <div class="span3">
	<form name="paypal_integration" id="paypal-integration" class="x-integration-form" [[!+member_page.paypal_display]]>
	  <label>PayPal Email</label>
	  <input name="paypal_email" type="text" class="" value="[[!+member_page.paypal_email]]">
	  <label>PayPal Item Id</label>
	  <input name="paypal_item_id" type="text" class="" value="[[!+member_page.paypal_item_id]]">
	  <label>PayPal Price</label>
	  <input name="paypal_price" type="text" class="" value="[[!+member_page.paypal_price]]">
	  <input type="submit" class="btn btn-success" name="submit" value="Save">
	</form>
	<form name="1shoppingcart_integration" id="1shoppingcart-integration" class="x-integration-form" [[!+member_page.oneshoppingcart_display]]>
	  <label>1ShoppingCart Price</label>
	  <input name="1shoppingcart_price" type="text" class="" value="">
	  <input type="submit" class="btn btn-success" name="submit" value="Save">
	</form>
      </div>
      <div class="span6">
	<div class="x-integration-instructions" id="paypal-instructions" [[!+member_page.paypal_display]]>
	  <h4>PayPal Integration</h4>
	  <p><a href="https://miadaviesllc.zendesk.com/entries/23125527-How-to-integrate-with-PayPal" target="_blank">How to integrate with PayPal</a></p>
	  <p><b>IPN URL: <a href="#">https://app.marketingtimesaver.com/service/transaction/ipn/</a></b></p>
	  <label>Create a new payment button in PayPal and paste the button's Email link below:</label>
	</div>
	<div class="x-integration-instructions" id="1shoppingcart-instructions" [[!+member_page.oneshoppingcart_display]]>
	  <h4>How to Integrate with 1ShoppingCart</h4>
	</div>
	<div class="row-fluid">
	  <input style="display:none;" name="order_link" id="order_link" type="text" value="[[!+member_page.order_link]]" class="span12">
	</div>
      </div>
  </div>
</div>

<div class="x-wizard-training-template" style="display:none">
  <div class="x-member-training-wrapper">
    <div class="x-member-training-title"><h3>Training Title</h3></div>
    <div class="x-member-video-wrapper"></div>
    <div class="x-member-content-wrapper"><p>Click here to edit text</p></div>
    <div class="x-member-downloads"></div>
  </div>
</div>
<div class="x-wizard-training-controls-template" style="display:none">
  <div class="x-wizard-training-controls btn-toolbar">
    <a class="btn btn-danger x-wizard-delete-training">Delete</a>
    <a class="btn btn-warning x-wizard-minimize-training">Minimize</a>
    <a class="btn btn-success x-wizard-maximize-training" style="display:none;">Maximize</a>
    <a class="btn btn-primary x-wizard-add-training pull-right">Add A New Training</a>
  </div>
</div>
<div id="x-wizard-video-options" style="display:none">
  <p class="x-wizard-video-option-list">
    <a class="x-wizard-video-option-link" href="#" data-target="upload-video">Upload A Video</a><br>
    <a class="x-wizard-video-option-link" href="#" data-target="video-library">Select From Library</a><br>
    <a class="x-wizard-video-option-link" href="#" data-target="video-url">YouTube / Vimeo</a>
  </p>
</div>
<div id="x-wizard-upload-video" style="display:none">
  <div class="x-wizard-video-option x-wizard-upload-video-option">
    <h3>Upload A Video</h3>
    <p>Click Choose File, select your video, and then click Upload.</p>
    <p>We support all the common video formats. Here's what we currently DON'T support:</p>
    <ul>
      <li>Apple Intermediate</li>
      <li>HDV 720p60</li>
      <li>ProRes 4444</li>
      <li>Go2Meeting3 (G2M3)</li>
      <li>ER AAC LD (Error Resiliant, Low-Delay variant of AAC)</li>
    </ul>
    <p>Note: If you are recording presentations in GoToWebinar, make sure to record in
      Windows Media Player format instead of GoToMeeting format.<br>
    </p>
	<div class="x-video-upload-progress hide">
	    <h4>Uploading...</h4>
		<div class="progress progress-striped active">
		  <div class="bar"></div>
		</div>
	  </div>
    <form id="x-video-upload-form" action="http://api2.transloadit.com/assemblies" enctype="multipart/form-data" method="POST">
      <input type="hidden" name="params" value="[[!+wizard.transloadit_video_params]]">
      <input type="file" name="my_file">
      <input type="submit" class="btn btn-success" value="Upload">
    </form>
  </div>
</div>
<div id="x-wizard-video-library" style="display:none">
  <div class="x-wizard-video-option x-wizard-video-library-option">
    <a class="cancel pull-right">Cancel</a>
    <h3>Select From Library</h3>
    <div class="x-wizard-media-browser row-fluid">
    </div>
  </div>
</div>
<div id="x-wizard-video-url" style="display:none">
  <div class="x-wizard-video-option x-wizard-video-url-option">
    <h3>Enter A Video URL</h3>
    <p>We support YouTube, Vimeo, Dailymotion, and Viddler. Please note that you must use the full video url, not a shortened url.</p>
    <p><a href="https://miadaviesllc.zendesk.com/entries/22921033-how-to-add-youtube-or-vimeo-videos" target="_blank">
      How to use Youtube or Vimeo videos</a>
    </p>
    <div class="row-fluid">
      <input type="text" name="video_url" class="span12">
      <button class="btn btn-success">Save</button>
      <button class="btn cancel">Cancel</button>
    </div>
  </div>
</div>
<div id="x-wizard-attach-file" style="display:none;">
  <div class="x-wizard-file-uploader">
	<div class="x-file-upload-progress hide">
	    <h4>Uploading...</h4>
		<div class="progress progress-striped active">
		  <div class="bar"></div>
		</div>
	  </div>
    <form id="x-file-upload-form" action="http://api2.transloadit.com/assemblies" enctype="multipart/form-data" method="POST">
	  <h4>Attach A File</h4>
      <input type="hidden" name="params" value="[[!+wizard.transloadit_file_params]]">
      <input type="file" name="my_file" multiple="multiple">
      <input type="submit" class="btn btn-success" value="Upload">
    </form>
  </div>
</div>
<div id="x-wizard-add-new-page" class="modal hide fade">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Add a New Page</h3>
  </div>
  <div class="modal-body">
    <form class="form-horizontal">
      <div class="control-group">
	<label>Menu Title</label>
	<div class="controls">
	  <input type="text" name="menu_title">
	</div>
      </div>
      <div class="control-group row-fluid">
	<label>Page Type</label>
	<div class="controls">
	  <select name="page_type" class="span11">
	    <option value="simple">Simple (Text and Optional Video)</option>
	    <option value="advanced">Advanced (Multiple Videos and Downloads)</option>
	  </select>
	</div>
      </div>
    </form>
  </div>
  <div class="modal-footer">
    <a href="#" class="btn modal-cancel">Cancel</a>
    <a href="#" class="btn btn-success">Add New Page</a>
  </div>
</div>
<div id="x-wizard-edit-page" class="modal hide fade">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Edit Page</h3>
  </div>
  <div class="modal-body">
    <form class="form-horizontal">
      <div class="control-group">
	<label>Menu Title</label>
	<div class="controls">
	  <input type="text" name="menu_title">
	</div>
      </div>
    </form>
  </div>
  <div class="modal-footer">
    <a href="#" data-dismiss="modal" class="btn">Cancel</a>
    <a href="#" class="btn btn-danger">Delete Page</a>
    <a href="#" class="btn btn-success">Save Changes</a>
  </div>
</div>
<div id="x-wizard-content-buffer" style="display:none;"></div>