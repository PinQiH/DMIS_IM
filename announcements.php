<?php
header("Content-Type:text/html; charset=utf-8");

// 載入配置文件
$link = require('config.php');

mysqli_set_charset($link, "utf8");

// 獲取特定公告的內容和相關附件
if (isset($_GET['announcement_id'])) {
    $announcement_id = $_GET['announcement_id'];
    // 檢索公告的資料
    $announcement_query = "SELECT * FROM announcements WHERE id = $announcement_id";
    $announcement_result = mysqli_query($link, $announcement_query);

    if ($announcement_result && $announcement_result->num_rows > 0) {
        $announcement_row = $announcement_result->fetch_assoc();
        $title = $announcement_row['title'];
        $publish_date = $announcement_row['publish_date'];
        $expiration_date = $announcement_row['expiration_date'];
        $issuing_unit = $announcement_row['issuing_unit'];
        $category = $announcement_row['category'];
        $content = $announcement_row['content'];
        $content = str_replace('。', '。<br>', $content);
        $related_url = $announcement_row['related_url'];

        // 檢索相關附件
        // $attachments_query = "SELECT * FROM attachments WHERE announcement_id = $announcement_id";
        // $attachments_result = mysqli_query($link, $attachments_query);
    } else {
        echo "找不到指定的公告。";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php include './headConfig.php'; ?>

    <title>公告內容</title>

    <style>
        .announcement {
            text-align: left;
            font-size: 20px;
            margin: 20px;
            line-height: 2;
        }

        .bold {
            font-weight: bold;
            display: inline;
        }
        .aaa{
            font-size: 25px;
        }
    </style>
</head>

<body>
    <div id="header"></div>
    <div class="wrap">

        <div class="href">
            <ol>
                <li class="a1"><a href="./index.php">首頁</a></li>
                <li class="a2"><a href="./pages/navbar-headlist/news.php">最新消息</a></li>
                <a href="<?php echo $_SERVER['PHP_SELF']; ?>?announcement_id=<?php echo $announcement_id; ?>">公告內容</a>
            </ol>
        </div>

        <div class="main">
            <p><?php echo $title; ?></p>
            <div class="announcement">
                <h1>
                    <div class="bold">發佈日期：</div><?php echo $publish_date; ?>
                </h1>
                <h1>
                    <div class="bold">發佈單位：</div><?php echo $issuing_unit; ?>
                </h1>
                <h1>
                    <div class="bold">分類：</div><?php echo $category; ?>
                </h1>
                <h1>
                    <div class="bold" >內容：</div>
                </h1>
                <h1 class="aaa"><?php echo $content; ?></h1>

                <?php
                // 顯示相關附件
                if ($attachments_result && $attachments_result->num_rows > 0) {
                    echo "<h1><div class='bold '>相關附件：</div></h1>";
                    while ($attachment_row = $attachments_result->fetch_assoc()) {
                        $attachment_title = $attachment_row['title'];
                        $file_path = $attachment_row['file_path'];
                        echo "<a href='$file_path' target='_blank'>$attachment_title</a><br>";
                    }
                } else {
                    echo "<h1><div class='bold'>相關附件：</div>無</h1>";
                }
                ?>
            </div>
        </div>
    </div>
    <div id="footer"></div>
</body>

</html>