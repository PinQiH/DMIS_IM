<?php
header("Content-Type:text/html; charset=utf-8");

// 載入配置文件
$link = include('../../../config.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php include '../../../headConfig.php'; ?>

    <title>專任教師</title>
</head>

<body>
    <div id="header"></div>
    <div class="wrap">

        <div class="href">
            <ol>
                <li class="a1"><a href="./index.php">首頁</a></li>
                <li class="a2"><a href="./pages/navbar-headlist/faculty.php">師資簡介</a></li>
                <li class="a3"><a href="./pages/navbar-sublist/Faculty-List/full_time_teachers.php">專任教師</a></li>
            </ol>
        </div>

        <div class="main-teacher">
            <p class="main-teacher-p">專任教師</p> 

            <!-- bootstrap 卡片範例 -->
            <div class="container-fluid">
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 g-4"> 
                    <?php
                    $sql = "SELECT * FROM teachers WHERE type = '專任教師'";
                    $result = mysqli_query($link, $sql);


                    // 遍歷結果集，生成 HTML
                    while ($row = mysqli_fetch_assoc($result)) {

                        echo '<div class="col-12 col-md-6">';
                        echo '<div class="card  h-100">';
                        echo '<div class="row g-0">';

                        // 圖片部分
                        echo '<div class="col-md-4">';
                        echo '<img src="' . $row['image_path'] . '" alt="' . $row['name'] . '" class="teacher-card-img w-100">';
                        echo '</div>';

                        // 詳細資料部分
                        echo '<div class="col-md-8">';
                        echo '<div class="card-body">';
                        echo '<h5 class="card-title">' . $row['name'] . '</h5>';

                        // 使用Flexbox佈局 範例
                        // echo '<div class="icon-text-container" style="display: flex; align-items: center;">';
                        // echo '<i class="material-icons" style="font-size:36px;">account_box</i>';
                        // echo '<p class="card-text" style="flex: 1; ;">' . $row['research_interests'] . '</p>';
                        // echo '</div>'; // icon-text-container 結束

                        // 原始card text
                        // echo '<p class="card-text">';
                        // echo '<i class="material-icons" style="font-size:36px; vertical-align: middle;">account_box</i> ';
                        // echo $row['title'];
                        // echo '</p>';

                        echo '<div class="icon-text-container">';
                        echo '<i class="material-icons">account_box</i>';
                        echo '<p class="card-text">' . $row['title'] . '</p>';
                        echo '</div>'; // icon-text-container 結束  

                        // 使用Flexbox佈局
                        echo '<div class="icon-text-container">';
                        echo '<i class="material-icons">school</i>';
                        echo '<p class="card-text">' . $row['school'] . '</p>';
                        echo '</div>'; // icon-text-container 結束  

                        echo '<div class="icon-text-container">';
                        echo '<i class="material-icons">thumb_up</i>';
                        echo '<p class="card-text teacher-text-keep">' . $row['research_interests'] . '</p>';
                        echo '</div>'; // icon-text-container 結束 

                        echo '<div class="icon-text-container">';
                        echo '<i class="material-icons">email</i>';
                        echo '<p class="card-text">' . $row['email'] . '</p>';
                        echo '</div>'; // icon-text-container 結束 

                        echo '<div class="icon-text-container">';
                        echo '<i class="material-icons">business_center</i>';
                        echo '<p class="card-text">';
                        echo !empty($row['office']) ? $row['office'] : '暫無' ;
                        echo '</p>';
                        echo '</div>'; // icon-text-container 結束 
                        
                        echo '<div class="icon-text-container">';
                        echo '<i class="material-icons">call</i>';
                        echo '<p class="card-text">'; 
                        echo !empty($row['phone']) ? $row['phone'] : '暫無';
                        echo '</p>';
                        echo '</div>'; // icon-text-container 結束  

                        //echo '<p class="card-text"><small class="text-muted">其他資訊</small></p>';
                        echo '</div>'; // card-body 結束
                        echo '</div>'; // col-md-8 結束

                        echo '</div>'; // row g-0 結束
                        echo '</div>'; // card 結束
                        echo '</div>'; // col-12 col-md-6 結束  
                    }
                    ?> 
                </div>
            </div>
        </div>
    </div>
    <div id="footer"></div>
</body> 

</html>