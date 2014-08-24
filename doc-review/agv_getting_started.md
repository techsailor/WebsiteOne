---
layout: jumbotron-narrow/default
title: Get Setup
---

<div class="panel agv-orange-panel">
  <div style="width:420px" class="center-block">
    <h1>Access the tools</h1>
  </div>
</div>

<div class="panel-group" id="accordion">
  <div class="col-md-6">
    <div class="panel panel-agv-slate" title="Join a scrum, we hold 5 a day and introduce yourself.">
      <div class="panel-heading"><h4 class="iconised-header">Scrums</h4><i class="fa fa-group pull-right"></i></div>
      <div class="panel-body">  <a href="http://agileventures.org/events">Join a Scrum</a></div>
    </div>

    <div class="panel panel-agv-slate" title="We use standard tools, you may have some accounts already.">
      <div class="panel-heading">
        <h4 class="iconised-header">Accounts you need</h4><i class="fa fa-cubes pull-right" title="Sign-up for accounts with these services."></i>
      </div>

      <div class="panel-body">
        <table>
					<tbody style="vertical-align:top">
						<tr>
							<td>
								<ul class="agv-iconised-list">
          				<li title="You need a github account to access the source code repository."><i class="fa fa-github"> Github</i></li>
          				<li title="We use Slack to chat on Project specific channels."><i class="fa fa-slack"> Slack</i></li>
          				<li title="To access our stories and bugs."><img src="/images/PivotalTracker/Tracker_Full_Horizontal_Small.png" height="16px" width="*"></li>
        				</ul>
							</td>
							<td>
								<ul class="agv-iconised-list">
          				<li><i class="fa fa-google-plus" title="Pairing sessions are held as a Hangout On Air, apart from having a google plus account it must be associated with your YouTube account, to store videos."> Google+</i></li>
          				<li title="Sign-up at Agileventures.org and follow a project.">Agileventures</li>
        				</ul>
							</td>
						</tr>
					</tbody>
				</table>

      </div> <!-- panel-body -->
    </div><!-- panel info -->


    <div class="panel panel-agv-slate" title="We isolate our development in a Virtual Machine. Each project has specific dependencies and requirements.">
      <div class="panel-heading">
        <h4 class="iconised-header">Set up your virual machine</h4><i class="fa fa-sliders pull-right"></i>
      </div>

      <div class="panel-body">
				<p>Project specfic documents</p>
				<ul>
					<li>{{"[local support](http://agileventures.org/projects/localsupport/documents/project-overview-localsupport)"|markdownify}}</li>
					<li>{{"[osra](http://agileventures.org/projects/osra-support-system/documents/getting-started-with-osra)"|markdownify}}</li>
					<li>{{"[websiteone](http://agileventures.org/projects/websiteone/documents/development-environment-setup)"|markdownify}}</li>
				</ul>
      </div>
    </div>

    
  </div> <!-- col-md-6 -->
  
  <!-- in the midlle -->


  <div class="col-md-6">
    
    <div class="panel panel-agv-slate" title="Start Pairing to get tasks completed.">
      <div class="panel-heading"><h4 class="iconised-header">Pairing</h4><i class="fa fa-user pull-right"></i><i class="fa fa-exchange pull-right"></i><i class="fa fa-user pull-right"></i></div>
      <div class="panel-body">  <a href="#">Starting a Pairing Session</a></div>
    </div>
    
    <div class="panel panel-agv-slate"  title="Some tools require us to permission your account to access our project areas, just contact us at a Scrum, Slack or email and let us know.">
      <div class="panel-heading">
        <h4 class="iconised-header" title="Send email to info@agileventures.org">Memberships Requests</h4><i class="fa fa-envelope-o pull-right" title="Send email to info@agileventures.org"></i>
      </div>
      
      <div class="panel-body">
        <ul>
          <li>Join Agileventures on Slack</li>
          <li><em>Your Project</em> at Pivotal Tracker</li>
          <li>Follow at Agileventures.org</li>
        </ul>
      </div><!-- panel body -->
    </div><!-- panel info -->

    <div class="panel panel-agv-slate" title="Our project repositories are held at Github, the main workflows are described here.">
      <div class="panel-heading"><h4 class="iconised-header"><a data-toggle="collapse" data-parent="#accordion" href="#collapsep3" ></a>Set up your code environment</h4><h4 class="iconised-header"></h4><i class="fa fa-git pull-right"></i></div>


        <div class="panel-body panel-collapse collapse in" id="collapsep3">
          <ul>
            <li>{{ "[Set up your repositories](../git-1-forkclone/)" | markdownify }}</li>
	    <li>{{ "[Work on a Feature Branch](../git-2-feature-branch/)" |markdownify}}</li>
	    <li>{{ "[Sync with Upstream](../git-3-sync-with-upstream/)" | markdownify}}</li>
	    <li>{{ "[Submit a Pull Request](http://agileventures.org/projects/websiteone/documents/how-to-submit-a-pull-request-on-github)" |markdownify}}</li>
	  </ul>
        </div><!-- panel-body -->

</div><!-- panel-group -->
