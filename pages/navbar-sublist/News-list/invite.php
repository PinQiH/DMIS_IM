<?php
header("Content-Type:text/html; charset=utf-8");

// 載入配置文件
$link = include('../../../config.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php include '../../../headConfig.php'; ?>

    <title>徵才資訊</title>
</head>

<body>
    <div id="header"></div>
    <div class="wrap">

        <div class="href">
            <ol>
                <li class="a1"><a href="./index.php">首頁</a></li>
                <li class="a2"><a href="./pages/navbar-headlist/news.php">最新消息</a></li>
                <li class="a3"><a href="./pages/navbar-sublist/News-List/invite.php">徵才資訊</a></li>
            </ol>
        </div>

        <div class="main">
            <div class="photo">
                <img src="./assets/images/徵才暗四.jpg" class="d-block w-100 " alt="..." style="height: 450px">
            </div><br><br>

            <div class="content">
                <div class="container">
                    <div class="table-responsive">
                        <table class="table custom-table">
                            <thead>
                                <tr>
                                    <th class="date">日期</th>
                                    <th class="title">標題</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                // 執行資料庫查詢
                                $sql = "SELECT id, publish_date, title FROM `announcements` WHERE category = '徵才資訊' ORDER BY publish_date";
                                $result = mysqli_query($link, $sql);
                                $row_count = mysqli_num_rows($result);

                                for ($i = 0; $i < $row_count; $i++) {
                                    $record = mysqli_fetch_row($result);
                                    echo "<tr class='bbb' onclick ='window.location=\"announcements.php?announcement_id={$record[0]}\"'><td>" . $record[1] . "</td><td>" . $record[2] . "</td></tr>";
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="footer"></div>
</body>

</html>