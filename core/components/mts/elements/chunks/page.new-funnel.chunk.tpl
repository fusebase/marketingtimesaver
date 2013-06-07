<style type="text/css">
  .alert-system {
    display: none;
  }
  .nav-tabs .btn {
    border-bottom: 0px;
  }
  #layouts .thumbnail {
    height: 252px;
  }
  .x-page-preview {
    border: 1px solid #e0e0e0;
    overflow: hidden;
  }
  .x-page-preview .x-wrapper {
    padding-left: 20px;
    padding-right: 20px;
    padding-bottom: 20px;
  }
  .x-wizard-option {
    display: none;
  }
  .x-wizard-option h3 {
    margin-top: 0px;
  }
  .x-wizard-setting-group {
    clear: both;
  }
  .x-wizard-setting-group .btn-group {
    margin-bottom: 8px;
  }
  .x-wizard-setting-group label {
    font-size: 14px;
    padding-left: 20px;
    padding-top: 4px;
  }
  .x-logo {
    cursor: pointer;
  }
  .x-video-delete {
    background-color: #a0a0a0;
    border-radius: 0px 3px 3px 0px;
    padding: 3px;
    margin-right: -18px;
    opacity: .5;
  }
  .x-video .x-video-delete {
    background-color: #333;
    opacity: 1;
  }
  .x-page-preview .x-layout {
    display: none;
  }
  .x-video .x-loading {
    text-align: center;
  }
  .x-wizard-video-options {
    display: table;
    height: 284px;
    width: 100%;
    background-color: #333;
  }
  .x-wizard-video-options p {
    color: #fff;
    display: table-cell;
    vertical-align: middle;
    text-align: center;
    margin: 0;
    line-height: 1.5;
    font-size: 24px;
    font-weight: bold;
  }
  .x-wizard-video-options p span {
    display: block;
    font-size: 14px;
    line-height: 1.3;
    font-weight: normal;
    padding-left: 20px;
    padding-right: 20px;
  }
  .x-wizard-video-options .progress {
    width: 60%;
    margin: 0 auto;
  }
  #x-layout-capture3 .x-wizard-video-options {
    height: 144px;
  }
  #x-layout-capture3 .x-wizard-video-options p {
    font-size: 16px;
  }
  .x-wizard-add-bullet {
    margin-bottom: 20px;
  }
  .x-bullet-delete {
    margin-right: -17px;
  }
  .x-wizard-media-browser {
    height: 350px;
    padding: 20px;
    margin-bottom: 20px;
    border: 1px solid #e0e0e0;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    overflow: auto;
    text-align: center;
  }
  .x-wizard-video-browser {
    padding-bottom: 10px;
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
  .x-wizard-media-browser ul {
    margin: 0;
    list-style-type: none;
  }
  .x-wizard-media-browser ul li {
    margin-bottom: 10px;
  }
  .x-wizard-configure-autoresponder {
    background-color: #fff;
    border: 3px dashed #000;
    padding: 20px 0px 25px;
    margin-bottom: 10px;
    font-size: 24px;
    font-weight: bold;
  }
</style>
[[$x.page.setup-wizard]]
<ul class="nav nav-tabs">
  <li class="active"><a href="#layouts" data-toggle="tab">Step 1</a></li>
  <li><a href="#themes" data-toggle="tab">Step 2</a></li>
  <li><a href="#capture-page" data-toggle="tab">Step 3</a></li>
  <li class="pull-right">[[+object.wizard_next_link]]</li>
  <li class="pull-right"><a href="#" class="btn x-wizard-save x-action-save"><i class="icon-ok-sign"></i> Save For Later</a></li>
  <li class="pull-right"><a href="[[+x_page.capture_preview_url]]?preview=yes" target="_blank" class="btn x-action-preview x-page-capture-preview-url x-wizard-save"><i class="icon-heart"></i> Save &amp; Preview</a></li>
</ul>
<div class="tab-content">
  <div class="tab-pane active" id="layouts">
    <div class="alert alert-info">
      The layout determines where the different parts of your page are visually located (ie., the headline, 
      video, optin, etc.)
    </div>
    <div class="row-fluid">
      <ul class="thumbnails">
  <li class="span4">
    <a href="#" class="thumbnail" data-layout="capture1">
      <img src="https://s3.amazonaws.com/cdn.frequency9.net/library/previews/capture-layout-1.jpg">
    </a>
  </li>
  <li class="span4">
    <a href="#" class="thumbnail" data-layout="capture2">
      <img src="https://s3.amazonaws.com/cdn.frequency9.net/library/previews/capture-layout-2.jpg">
    </a>
  </li>
  <li class="span4">
    <a href="#" class="thumbnail" data-layout="capture3">
      <img src="https://s3.amazonaws.com/cdn.frequency9.net/library/previews/capture-layout-3.jpg">
    </a>
  </li>
      </ul>
      <ul class="thumbnails">
  <li class="span4">
    <a href="#" class="thumbnail" data-layout="capture4">
      <img src="https://s3.amazonaws.com/cdn.frequency9.net/library/previews/capture-layout-4.jpg">
    </a>
  </li>      
  <li class="span4">
    <a href="#" class="thumbnail" data-layout="capture5">
      <img src="https://s3.amazonaws.com/cdn.frequency9.net/library/previews/capture-layout-5.jpg">
    </a>
  </li>
  <li class="span4">
    <a href="#" class="thumbnail" data-layout="capture6">
      <img src="https://s3.amazonaws.com/cdn.frequency9.net/library/previews/capture-layout-6.jpg">
    </a>
  </li>
      </ul>
    </div>
  </div>
  <div class="tab-pane" id="themes">
    <div class="alert alert-info">
      The theme controls the look and feel of your page. Not all themes will look good with every 
      template though. The previews below show just one possible combination. Have some fun 
      and mix and match to see what you come up with!
    </div>
    <div class="row-fluid">
      [[$x.page.wizard.theme-chooser]]
    </div>
  </div>
  <div class="tab-pane" id="capture-page">
    <div class="alert x-alert-choose-layout">
      <strong>Hold on there, you need to choose a layout first!</strong>
    </div>
    <div class="alert alert-info">
      Time to add your content! Just click to edit any text. You can also upload or embed videos,
      add bullets, and configure your autoresponder.
    </div>
    <div class="row-fluid" style="display: none;">  
      <div class="span9">
  <div class="x-page-preview">
    [[!$x.page.css.layouts]]
    [[!$x.page.css.design]]
    <div class="x-banner"></div>
    <div class="x-wrapper">
      [[!$x.layout.capture1]]
      [[!$x.layout.capture2]]
      [[!$x.layout.capture3]]
      [[!$x.layout.capture4]]
      [[!$x.layout.capture5]]
      [[!$x.layout.capture6]]
    </div>
  </div>
      </div>
      <div class="span3">
  <div class="x-wizard-option" id="x-wizard-option-capture-settings" style="display: block;">
    <h3>Display Settings</h3>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-logo">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Logo</label>
    </div>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-preheadline">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Pre-Headline</label>
    </div>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-headline">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Headline</label>
    </div>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-subheadline">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Sub-Headline</label>
    </div>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-video">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Video</label>
    </div>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-secondary-headline">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Secondary Headline</label>
    </div>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-copy-block1">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Copy Block 1</label>
    </div>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-bullets">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Bullets</label>
    </div>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-copy-block2">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Copy Block 2</label>
    </div>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-cta-headline">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Call To Action</label>
    </div>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-cta-copy">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Call To Action Copy</label>
    </div>
    <div class="x-wizard-setting-group">
      <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-privacy">
        <button type="button" class="btn yes">Yes</button>
        <button type="button" class="btn no">No</button>
      </div>
      <label class="pull-left">Privacy Notice</label>
    </div>
  </div>
  <div class="x-wizard-option" id="x-wizard-option-upload-video">
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
    <input type="file" name="my_file" style="max-width:100%;">
    <input type="submit" class="btn btn-success" value="Upload">
    </form>
    <button class="btn cancel">Close</button>
  </div>
  <div class="x-wizard-option" id="x-wizard-option-s3uploader">
    <div class="x-wizard-upload x-wizard-upload-logo">
      <h3>Upload Logo</h3>
    </div>
    <div id="s3uploader" style="height:180px; margin-bottom: 10px;"></div>
    <div class="x-wizard-upload x-wizard-upload-logo">
    </div>
    <button class="btn cancel">Close</button>
    <button class="btn cancel x-cancel-upload">Close &amp; Cancel Upload</button>
  </div>
  <div class="x-wizard-option" id="x-wizard-option-video-library">
    <h3>Video Library</h3>
    <div class="x-wizard-media-browser x-wizard-video-browser"></div>
    <button class="btn cancel">Close</button>
  </div>
  <div class="x-wizard-option" id="x-wizard-option-capture-video-url">
    <h3>Enter A Video URL</h3>
    <p>We support YouTube, Vimeo, Dailymotion, and Viddler.</p>
    <p><a href="https://miadaviesllc.zendesk.com/entries/22921033-how-to-add-youtube-or-vimeo-videos" target="_blank">
      How to use Youtube or Vimeo videos</a>
    </p>
    <input type="text" name="x_wizard_option_capture_video_url" class="span12">
    <button class="btn btn-success">Save</button>
    <button class="btn cancel">Cancel</button>
  </div>
  <div class="x-wizard-option" id="x-wizard-option-autoresponder">
    <h3>Autoresponder Code</h3>
    <p>Create a capture form in your autoresponder software. You don't need to use any 
      design options; we will override the design to match our themes.</p>
    <p>Enter the URL below for your thank you page and/or already confirmed page (for Aweber). 
      Check the option to pass variables to the thank you page.</p>
    <p><a href="https://miadaviesllc.zendesk.com/forums/21581408-marketing-timesaver" target="_blank">
      Watch Video Tutorials</a></p>
    <textarea class="span12" style="height:40px; font-size:10px; line-height:1.2; cursor:default;" readonly="readonly">[[+x_page.subscribe_url]]</textarea>
    <p>Then just copy and paste the generated HTML code below. Make sure to use the "advanced" 
      or "HTML version" of your embed code.</p>
    <textarea type="text" id="autoresponder_code" style="height:100px;" name="x_wizard_option_autoresponder_code" class="span12"></textarea>
    <button class="btn btn-success">Save</button>
    <button class="btn cancel">Cancel</button>
    <p style="margin-top:20px;">We recommend <a href="http://miadavies.aweber.com" target="_blank">
      Aweber</a> and we also support 
      <a href="http://getresponse.com" target="_blank">GetResponse</a>, 
      <a href="http://icontact.com" target="_blank">iContact</a>, 
      <a href="http://infusionsoft.com" target="_blank">Infusionsoft</a>, 
      and <a href="http://mailchimp.com" target="_blank">Mailchimp</a>.
      Please submit a support ticket if you would like to see us support additional autoresponders.</p>
  </div>
  <div class="x-wizard-option" id="x-wizard-option-capture-button">
    <h3>Choose A Button</h3>
    <input type="hidden" name="capture_button_class">
    <div class="x-wizard-media-browser x-wizard-image-browser">
      <ul>
        [[x.page.wizard.list-buttons? &type=`capture`]]
      </ul>
    </div>
    <button class="btn cancel">Close</button>
  </div>
      </div>
    </div>
  </div>
  <div class="tab-pane" id="legal">
    <div class="row-fluid">
      <div class="span4">
   <div class="alert alert-info">
     <p><strong>Heads up!</strong> Proper legal disclaimers are a necessity for your website. Besides being essential for protecting yourself, 
       you need the correct disclaimers to get approved to run ads to your pages.</p>
     <p>At the very least, you will need a Terms of Service and a Privacy Policy. For help generating these documents, visit Legal River.</p>
     <p><a href="http://terms-of-service-generator.legalriver.com/" target="_blank">http://terms-of-service-generator.legalriver.com/</a></p>
     <p><a href="http://privacy-policy-generator.legalriver.com/" target="_blank">http://privacy-policy-generator.legalriver.com/</a></p>
     <p><strong>Tip -</strong> You'll usually want the same legal disclaimers to appear in the footer of all the pages of your website,
       which is how we have set up Marketing Timesaver to work.</p>
     <p>We also give you the option of adding disclaimer text to the footer of your individual pages, which you can set up here.</p>
  </div>
      </div>
      <div class="span8">
  <h4>Footer Disclaimer Text</h4>
  <textarea name="footer_disclaimer_text" id="footer_disclaimer_text" class="span12" style="min-height: 120px;"></textarea>
  <h4>Website Disclaimers</h4>
  <div class="btn-toolbar">
    <a href="/websites/[[+x_website.id]]/disclaimers/" class="btn" target="_blank">View All Disclaimers</a>
    <a href="/websites/[[+x_website.id]]/disclaimers/new/" class="btn" target="_blank">Add Disclaimer</a>
  </div>
  [[!object.summary? &class=`XDisclaimer` &fields=`name` &filter=`website_id::[[+x_website.id]]` &limit=`10`]]
      </div> 
    </div>
  </div>
</div>
<div class="modal hide fade" id="x-copy-editor">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Edit Copy</h3>
  </div>
  <div class="modal-body">
    <textarea id="x-copy-editor-content">
    </textarea>
  </div>
  <div class="modal-footer">
    <a href="#" class="btn x-close">Close</a>
    <a href="#" class="btn btn-primary">Save changes</a>
  </div>
</div>
<div id="x-wizard-page-content" style="display:none;">
</div>