export default {
    template: `
    <div class="container-fluid">
    <h1>Admin Dashboard</h1>
    <h3>Welcome!</h3>
    <p> {{ message }}</p>
    <nav>
        <ul>
            <li><a href="#"><i class="fas fa-user-plus"></i> Create User</a></li>
            <li><a href="#"><i class="fas fa-user-edit"></i> Edit User</a></li>
            <li><a href="#"><i class="fas fa-user-times"></i> Delete User</a></li>
            <li><a href=""><i class="fas fa-sign-out-alt"></i> Sign Out</a></li>
            <!-- scripts/caller.php?caller_id=logout -->
        </ul>
    </nav>
    </div>  
    `,

    data: {
        message: "this is the admin page",
    }
}