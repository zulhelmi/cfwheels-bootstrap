<cfoutput>        
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Users</h3>
            <div class="pull-right">#linkTo(text="+ Add New User", action="new", class="btn btn-default")#</div>
        </div><!-- /.box-header -->
        <div class="box-body">
            <table class="table table-bordered table-striped datatable">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <cfloop query="users">
                    <tr>
                        <td>#users.name#</td>
                        <td>#users.email#</td>
                        <td>#linkTo(
                                text="Edit", action="edit", key=users.id,
                                title="Edit #users.name#"
                            )#
                        </td>
                        <td>#linkTo(
                                text="Delete", action="delete", key=users.id,
                                title="Delete #users.name#",
                                confirm="Are you sure that you want to delete
                                    #users.name#?"
                            )#
                        </td>
                    </tr>
                    </cfloop>
                </tbody>
            </table>
        </div>
    </div>
</cfoutput>