<?php

header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

ini_set('display_errors', 1);
error_reporting(E_ALL);

header("Content-Type:text/html; charset=utf-8");

// 載入配置文件
$link = include('config.php'); 
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, shrink-to-fit=no">

    <!--jquery-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

    <!-- BS5.3.2 CSS/JS Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Need css -->
    <link rel="stylesheet" type="text/css" href="./assets/css/main.css" />
    <link rel="stylesheet" type="text/css" href="./assets/css/header.css" />
    <link rel="stylesheet" type="text/css" href="./assets/css/banner.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/footer.css" />

    <!-- Need JS -->
    <script src="./assets/js/nav.js"></script>
    <script type="module" src="./assets/js/main.js"></script> 

    <title>首頁</title>
</head>

<body>
    <div id="header"></div>
    <div class="wrap">


        <?php include('components/Banner/banner.php'); ?>

        <div class="main">
            <div class="index">
                <div class="content-wrapper-4">
                    <div class="content-container">
                        <div class="left-table">
                            <!-- 放最新消息的表格 -->
                            <p>最新消息</p>

                            <table>
                                <thead>
                                    <tr>
                                        <th>日期</th>
                                        <th id="title">標題</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    // 執行資料庫查詢
                                    $sql = "SELECT id, publish_date, title FROM `announcements` ORDER BY publish_date DESC LIMIT 5";
                                    $result = mysqli_query($link, $sql);
                                    $row_count = mysqli_num_rows($result);

                                    for ($i = 0; $i < $row_count; $i++) {
                                        $record = mysqli_fetch_row($result);
                                        echo "<tr class='bbb' onclick='window.location=\"announcements.php?announcement_id={$record[0]}\"'> <td data-title='日期'>" . $record[1] . "</td><td data-title='標題'>" . $record[2] . "</td></tr>";
                                    }
                                    ?>
                                </tbody>
                            </table>

                            <a href="./pages/navbar-headlist/news.php">
                                <button type="button" class="btn btn-outline-secondary">查看更多</button>
                            </a>
                        </div>
                    </div>

                    <div class="content-container">
                        <div class="right-table">
                            <!-- 放招生資訊的表格 -->
                            <p>招生資訊</p>

                            <table>
                                <thead>
                                    <tr>
                                        <th>日期</th>
                                        <th id="title">標題</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    // 執行資料庫查詢
                                    $sql = "SELECT id, publish_date, title FROM `announcements` WHERE category = '招生資訊' ORDER BY publish_date DESC LIMIT 5";
                                    $result = mysqli_query($link, $sql);
                                    $row_count = mysqli_num_rows($result);

                                    for ($i = 0; $i < $row_count; $i++) {
                                        $record = mysqli_fetch_row($result);
                                        echo "<tr class='bbb' onclick='window.location=\"announcements.php?announcement_id={$record[0]}\"'><td data-title='日期'>" . $record[1] . "</td><td data-title='標題'>" . $record[2] . ".</td></tr>";
                                    }
                                    ?>
                                <tbody>
                            </table>

                            <a href="./pages/navbar-sublist/News-List/stud.php">
                                <button type="button" class="btn btn-outline-secondary">查看更多</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <div id="footer"></div>
</body>

</html>