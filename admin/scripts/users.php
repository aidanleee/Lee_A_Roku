<?php

    if (isset($_GET['allusers'])) {
        include('connect.php');

        $query = 'SELECT * FROM tbl_users';

        $getAllUsers = $pdo->prepare($query);
        $getAllUsers->execute();

        $users = array();

        while($user = $getAllUsers->fetch(PDO::FETCH_ASSOC)) {
            $currentuser =  array();
            $currentuser['id'] = $user['user_id'];
            $currentuser['username'] = $user['user_name'];
            $currentuser['fname'] = $user['user_fname'];
            $currentuser['admin'] = $user['user_admin'];
            $currentuser['access'] = $user['user_access'];
            $currentuser['finitial'] = $user['user_finitial'];
            $currentuser['avatar'] = $user['user_avatar'];

            $users[] = $currentuser;
        }

        echo json_encode($users);
    }
    
?>