<?php
header("Content-Type:text/html; charset=utf-8");

// 載入配置文件
$link = include('../../../config.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php include '../../../headConfig.php'; ?>

    <title>行事曆</title>
</head>

<body>
    <div id="header"></div>
    <div class="wrap">

        <div class="href">
            <ol>
                <li class="a1"><a href="./index.php">首頁</a></li>
                <li class="a2"><a href="./pages/navbar-headlist/other.php">其他資源</a></li>
                <li class="a3"><a href="./pages/navbar-sublist/Other-List/calendar.php">行事曆</a></li>
            </ol>
        </div>

        <div class="main">
            <div class="title">
                <h2>行事曆</h2><br><br>
            </div>

            <div class="content">
                <div class="container">
                    <div class="table-responsive">
                        <table class="table custom-table">
                            <tbody>
                                <?php
                                // 執行資料庫查詢
                                $sql = "SELECT calendar_name, calendar_link FROM `calendars` ORDER BY updated_at DESC";
                                $result = mysqli_query($link, $sql);
                                $row_count = mysqli_num_rows($result);

                                for ($i = 0; $i < $row_count; $i++) {
                                    $record = mysqli_fetch_row($result);
                                    echo "<tr onclick='window.location=\"$record[1]\"'><td>" . $record[0] . "</td></tr>";
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