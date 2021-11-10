<?php
    require '../broker.php';



    $broker=Broker::getBroker();
    $naziv=$_POST['naziv'];
    $boja=$_POST['boja'];
    $kategorija=$_POST['kategorija'];
    $slika=$_FILES['slika'];
    $opis=$_POST['opis'];
    $cena=$_POST['cena'];
    $nazivSlike=$slika['name'];
    $lokacija = "../../img/".$nazivSlike;
    if(!move_uploaded_file($_FILES['slika']['tmp_name'],$lokacija)){
        $lokacija="";
      echo "Nije uspelo prebacivanje slike";
        exit;
    }else{
        
        $lokacija=substr($lokacija,4);
    }
    
    $rezultat=$broker->izmeni("insert into proizvod (naziv,cena,boja,slika,opis,kategorija) values ('".$naziv."',".$cena.",".$boja.",'".$lokacija."','".$opis."',".$kategorija.") ");
    if($rezultat['status']){
       echo '200';
    }else{
       echo $rezultat['error'];
    }
    
    
    


?>