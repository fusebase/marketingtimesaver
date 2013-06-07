<div class="row-fluid">
    <div class="span9">
        <div id="mts-value-page-designer" class="mts-page-designer"></div>
    </div>
    <div class="span3">
    <div class="x-wizard-option" id="x-wizard-option-value-settings" style="display: block;">
      <h3>Display Settings</h3>
      <div class="x-wizard-setting-group">
        <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-logo">
          <button type="button" class="btn yes">Yes</button>
          <button type="button" class="btn no">No</button>
        </div>
        <label class="pull-left">Logo</label>
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
        <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-social">
          <button type="button" class="btn yes">Yes</button>
          <button type="button" class="btn no">No</button>
        </div>
        <label class="pull-left">Social Share Buttons</label>
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
        <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-embed-code">
          <button type="button" class="btn yes">Yes</button>
          <button type="button" class="btn no">No</button>
        </div>
        <label class="pull-left">Embed Code</label>
      </div>
      <div class="x-wizard-setting-group">
        <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-downloads">
          <button type="button" class="btn yes">Yes</button>
          <button type="button" class="btn no">No</button>
        </div>
        <label class="pull-left">Downloads</label>
      </div>
      <div class="x-wizard-setting-group">
        <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-downloads-headline">
          <button type="button" class="btn yes">Yes</button>
          <button type="button" class="btn no">No</button>
        </div>
        <label class="pull-left">Download Headline</label>
      </div>
      <div class="x-wizard-setting-group">
        <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-copy-block2">
          <button type="button" class="btn yes">Yes</button>
          <button type="button" class="btn no">No</button>
        </div>
        <label class="pull-left">Download Instructions</label>
      </div>
      <div class="x-wizard-setting-group">
        <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-comments">
          <button type="button" class="btn yes">Yes</button>
          <button type="button" class="btn no">No</button>
        </div>
        <label class="pull-left">Comments</label>
      </div>
    </div>
    <div class="x-wizard-option" id="x-wizard-option-upload-files">
      <div class="x-file-upload-progress hide">
        <h4>Uploading...</h4>
        <div class="progress progress-striped active">
          <div class="bar"></div>
        </div>
      </div>
      <form id="x-file-upload-form" action="http://api2.transloadit.com/assemblies" enctype="multipart/form-data" method="POST">
        <input type="hidden" name="params" value="[[!+wizard.transloadit_value_file_params]]">
        <h4>Step 1: Choose Files</h4>
        <p style="font-size:12px; line-height:1.3;">To select multiple files, hold down the Ctrl key on Windows or the Command key on Mac.</p>
        <input style="max-width:100%;" type="file" id="x-file-upload-input" name="my_file" multiple="multiple" />
        <h4 style="margin-top:20px;">Step 2: Upload Your Files</h4>
        <div style="margin-top:10px;"><input type="submit" value="Upload" class="btn btn-large btn-success"></div>
      </form>
      <button class="btn cancel">Close</button>
    </div>
    <div class="x-wizard-option" id="x-wizard-option-s3uploader">
      <div class="x-wizard-upload x-wizard-upload-file">
        <h3>Upload File</h3>
      </div>
      <div class="x-wizard-upload x-wizard-upload-video">
        <h3>Upload A Video</h3>
      </div>
      <div id="s3uploader" style="height:180px; margin-bottom: 10px;"></div>
      <div class="x-wizard-upload x-wizard-upload-logo">
      </div>
      <div class="x-wizard-upload x-wizard-upload-video">
        <p>Click Select File, choose a video, and then click Upload. You can continue to work
        on your page while the video uploads, but don't save until the upload completes.</p>
        <p><a href="https://miadaviesllc.zendesk.com/entries/22920567-how-to-upload-videos" target="_blank">
          How to upload videos</a></p>
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
      </div>
      <button class="btn cancel">Close</button>
      <button class="btn cancel x-cancel-upload">Close &amp; Cancel Upload</button>
    </div>
    <div class="x-wizard-option" id="x-wizard-option-video-library">
      <h3>Video Library</h3>
      <div class="x-wizard-media-browser x-wizard-video-browser"></div>
      <button class="btn cancel">Close</button>
    </div>
    <div class="x-wizard-option" id="x-wizard-option-value-video-url">
      <h3>Enter A Video URL</h3>
      <p>We support YouTube, Vimeo, Dailymotion, and Viddler.</p>
      <p><a href="https://miadaviesllc.zendesk.com/entries/22921033-how-to-add-youtube-or-vimeo-videos" target="_blank">
        How to use Youtube or Vimeo videos</a>
      </p>
      <input type="text" name="x_wizard_option_value_video_url" class="span12">
      <button class="btn btn-success">Save</button>
      <button class="btn cancel">Cancel</button>
    </div>
    
    <div class="x-wizard-option" id="x-wizard-option-social">
      <h3>Social Options</h3>
      <label>Sharing Headline</label>
      <textarea id="social_headline"></textarea>
      <p>Select which social network sharing buttons to display on your value page.</p>
      <div class="x-wizard-setting-group">
        <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-share-facebook">
          <button type="button" class="btn yes">Yes</button>
          <button type="button" class="btn no">No</button>
        </div>
        <label class="pull-left">Facebook</label>
      </div>
      <div class="x-wizard-setting-group">
        <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-share-twitter">
          <button type="button" class="btn yes">Yes</button>
          <button type="button" class="btn no">No</button>
        </div>
        <label class="pull-left">Twitter</label>
      </div>
      <div class="x-wizard-setting-group">
        <div class="btn-group pull-left" data-toggle="buttons-radio" data-display="x-share-google">
          <button type="button" class="btn yes">Yes</button>
          <button type="button" class="btn no">No</button>
        </div>
        <label class="pull-left">Google Plus</label>
      </div>
      <br><br>
      <button class="btn cancel">Close</button>
    </div>
    
    <div class="x-wizard-option" id="x-wizard-option-embed-code">
      <h3>Embed Code</h3>
      <p>For example, you could enter SurveyMonkey or Wufoo embed code here.</p>
      <textarea type="text" id="embed_code" name="x_wizard_option_embed_code" class="span12" style="min-height: 240px;"></textarea>
      <button class="btn cancel">Close</button>
    </div>
    
    <div class="x-wizard-option" id="x-wizard-option-comments">
      <h3>Configure Comments</h3>
      <p>Create a value form in your autoresponder software. You don't need to use any 
        design options; we will override the design to match our themes.</p>
      <p>Then just copy and paste the generated HTML code below. Make sure to use the "advanced" 
        or "HTML version" of your embed code.</p>
      <textarea type="text" id="autoresponder_code" name="x_wizard_option_autoresponder_code" class="span12"></textarea>
      <button class="btn btn-success">Save</button>
      <button class="btn cancel">Cancel</button>
    </div>
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
    </div>
</div>
</div>