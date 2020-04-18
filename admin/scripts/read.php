<?php

    function getAll($tbl){
        include('connect.php');
        $queryAll = 'SELECT * FROM '.$tbl;
        $runAll = $pdo->query($queryAll);
        $result = array();
        while($row = $runAll->fetch(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }
        return $results;
    }

    function getSingle($tbl, $col, $value) {
        include('connect.php');
        $querySingle = 'SELECT _ FROM '.$tbl.' WHERE '.$col.' = '.$value;
        $runSingle = $pdo->query($runSingle);
        if($runSingle) {
            return $runSingle;
        } else {
            $error = 'There was a problem';
            return $error;
        }
    }
?>