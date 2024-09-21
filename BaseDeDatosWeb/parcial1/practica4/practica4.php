<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];
    
    echo "<body style='background-color: #C29D93;'>";
    echo "</body>";

    echo "<h3>1. ¿Cuál es el sueño principal de Monkey D. Luffy y qué lo motiva a lograrlo?  </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Convertirse en el Rey de los Piratas para tener libertad total.</h5>";
    if($pregunta1 == "Convertirse en el Rey de los Piratas para tener libertad total."){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }

    echo "<h3>2. _____________ es el miembro más reciente en unirse a la tripulación de los Sombrero de Paja.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Jinbe</h5>";
    if(strtoupper($pregunta2) == "JINBE"){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }

    echo "<h3>3. ¿Cuáles de los siguientes personajes han comido una fruta del diablo? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta3)." ---- Correcta = Nico Robin, Brook</h5>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "Nico Robin" || $pregunta3[$i] == "Brook"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }

        echo "<h3>4. ¿Cómo obtuvo Zoro sus espadas y cuál es su objetivo como espadachín? </h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = Ganó la mayoría de sus espadas en duelos, y su objetivo es convertirse en el mejor espadachín del mundo.</h5>";
        if($pregunta4 == "Ganó la mayoría de sus espadas en duelos, y su objetivo es convertirse en el mejor espadachín del mundo."){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }

        echo "<h3>5. _____________ era conocido como el Dios del Sol por los esclavos de tiempos ancestrales y existe una fruta tipo zoan mítica con su nombre. </h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = Nika</h5>";
        if(strtoupper($pregunta5) == "NIKA"){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    
        echo "<h3>6. ¿Qué poder le otorga a Luffy la fruta del diablo Gomu Gomu no Mi, y cómo lo utiliza en combate? </h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta6." ---- Correcta = Le otorga habilidades elásticas, permitiéndole estirarse y usar técnicas de combate basadas en esa elasticidad.</h5>";
        if($pregunta6 == "Le otorga habilidades elásticas, permitiéndole estirarse y usar técnicas de combate basadas en esa elasticidad."){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }

        echo "<h3>7. ¿Cuáles de los siguientes personajes han sido prisioneros en Impel Down? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta7)." ---- Correcta = Crocodile, Jinbe</h5>";
    $p7_respuestas_correctas = 0;

    if(count($pregunta7) == 2){
        for($i=0; $i<count($pregunta7); $i++){
            if($pregunta7[$i] == "Crocodile" || $pregunta7[$i] == "Jinbe"){
                $p7_respuestas_correctas ++;
            }
        }
        if($p7_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }

    echo "<h3>2. _____________ fue un hombre del Gran Reino nacido hace 900 años, al principio del Siglo Vacío, así como el primer pirata de la historia.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta8." ---- Correcta = Joy Boy</h5>";
    if(strtoupper($pregunta8) == "JOY BOY"){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }

    echo "<h3>9. ¿Qué relación tienen Gol D. Roger y Monkey D. Luffy? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta9." ---- Correcta = No hay una relación familiar directa, pero ambos comparten el mismo sueño de convertirse en el Rey de los Piratas.</h5>";
    if($pregunta9 == "No hay una relación familiar directa, pero ambos comparten el mismo sueño de convertirse en el Rey de los Piratas."){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }

    echo "<h3>3. ¿Cuáles de los siguientes personajes han comido una fruta del diablo? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta10)." ---- Correcta = Nico Robin, Brook</h5>";
    $p10_respuestas_correctas = 0;

    if(count($pregunta10) == 2){
        for($i=0; $i<count($pregunta10); $i++){
            if($pregunta10[$i] == "Sanji" || $pregunta10[$i] == "Boa Hancock"){
                $p10_respuestas_correctas ++;
            }
        }
        if($p10_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }

    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";

?>