<div class="btn-group">
    <a class="mts-action btn btn-primary" href="/#/[[~22]]">New Funnel</a>
</div>
<table class="table">
    <thead>
        <th>Funnel</th>
        <th>Actions</th>
    </thead>
    <tbody>
        [[getResources?
            &tpl=`mts.funnel.overview`
            &context=`projects`
            &parents=`[[+mts.project.id]]`
            &where=`{"template:=":4}`
            &sortby=`pagetitle`
            &sortdir=`ASC`
        ]]
    </tbody>
</table>