<?php
header("Content-Type:text/html; charset=utf-8");

// 載入配置文件
$link = require('config.php');

mysqli_set_charset($link, "utf8");

// 設定每頁最多顯示的資料數
$items_per_page = 4;

// 獲取當前頁碼，如果未指定，默認為第1頁
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;

// 查詢總餐廳數
$total_restaurants = mysqli_query($link, "SELECT COUNT(*) as total FROM restaurants");
$total_data = mysqli_fetch_assoc($total_restaurants);
$total = $total_data['total'];

// 計算總頁數
$total_pages = ceil($total / $items_per_page);

// 計算每頁的起始索引
$offset = ($page - 1) * $items_per_page;
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php include './headConfig.php'; ?>

    <title>美食推薦</title>

    <style>
        /* 分頁容器 */
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        /* 分頁連結 */
        .pagination a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 30px;
            height: 30px;
            margin: 0 5px;
            border: 1px solid #333;
            text-decoration: none;
            color: #333;
            border-radius: 50%;
            transition: background-color 0.3s, color 0.3s, transform 0.3s;
        }

        /* 活動頁碼 */
        .pagination span {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 30px;
            height: 30px;
            margin: 0 5px;
            border: 1px solid #333;
            background-color: #333;
            color: #fff;
            border-radius: 50%;
        }

        /* 頁碼連結的悬停樣式 */
        .pagination a:hover {
            background-color: #baa6c9;
            color: #fff;
            transform: scale(1.2);
        }

        .food_times_style {
            /* font-weight: bold; */
            /*margin-left: 126px; */

            display: block;
        }
    </style>
</head>

<body>
    <div id="header"></div>
    <div class="wrap">

        <div class="href">
            <ol>
                <li class="a1"><a href="./index.php">首頁</a></li>
                <li class="a2"><a href="food.php">美食推薦</a></li>
            </ol>
        </div>

      
         
       <?php 
       // phpinfo(INFO_MODULES);  // PHP版本資訊
        ?>
        
        

        <div class="main-teacher">
            <p class="main-teacher-p">美食推薦</p>

            <!-- bootstrap 卡片範例 -->
            <div class="container-fluid">
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 g-4">
                    <?php
                    $sql = "SELECT * FROM restaurants LIMIT $offset, $items_per_page";
                    $result = mysqli_query($link, $sql);

                    // 遍歷結果集，生成 HTML
                    while ($row = mysqli_fetch_assoc($result)) {

                        echo '<div class="col-12 col-md-6">';
                        echo '<div class="card  h-100">';
                        echo '<div class="row g-0">';

                        // 圖片部分
                        echo '<div class="col-md-8">';
                        echo '<img src="' . $row['image_path'] . '" alt="' . $row['name'] . '" class="teacher-card-img w-100">';
                        echo '</div>';

                        // 詳細資料部分
                        echo '<div class="col-md-8">';
                        echo '<div class="card-body">';
                        echo '<h5 class="card-title">' . $row['name'] . '</h5>';

                        echo '<div class="icon-text-container">';
                        echo '<i class="material-icons">place</i>';
                        echo '<p class="card-text">';
                        echo '<a href="https://www.google.com/maps?q=' . htmlspecialchars($row['name'], ENT_QUOTES, 'UTF-8') . '" target="_blank">';
                        echo '<span>' . nl2br(htmlspecialchars($row['address'], ENT_QUOTES, 'UTF-8')) . '</span>';
                        echo '</a>';
                        echo '</p>';
                        echo '</div>'; // icon-text-container 結束  

                        echo '<div class="icon-text-container">';
                        echo '<i class="material-icons">call</i>';
                        echo '<p class="card-text">';
                        echo !empty($row['phone']) ? $row['phone'] : '暫無';
                        echo '</p>';
                        echo '</div>'; // icon-text-container 結束   

                        $hours = $row['hours'];
                        $dates = $row['date'];
                        $time_segments = explode(',', $hours); // 分割時間段

                        // 處理每個時間段
                        foreach ($time_segments as $key => $segment) {
                            $time_segments[$key] = '<span class="text-keep">' . $segment . '</span>';
                        }

                        // 合併時間段
                        $hours_display = implode('、', $time_segments);

                        echo '<div class="icon-text-container">';
                        echo '<i class="material-icons text-keep">access_time</i>';
                        // echo '<p class="card-text">' . $hours_display . '</p>';
                        echo '<p class="card-text">';

                        // $hours = "11:00-13:30、16:30-23:00/16:00-23:00"; 
                        // $date  = "週一至週五:/週日:";
                        $time_ranges = explode('/', $hours); // 分割時間範圍  
                        $date_ranges = explode('/', $dates);

                        // 循環處理時間範圍和日期
                        for ($i = 0; $i < count($time_ranges); $i++) {
                            $time_range = $time_ranges[$i];
                            $date_range = $date_ranges[$i];

                            // 從日期範圍中提取週一至週五或週日的部分
                            // $day_part = strstr($date_range, ':', true); // PHP 5.3 版本以上才能接受第三個參數
                            $day_part = substr($date_range, 0, strpos($date_range, ":")); // 同上方功能，用舊版本已有的函數做調整

                            // 分割時間段
                            $time_segments = explode('、', $time_range);

                            // 初始化一個變數來跟蹤是否是第一個時間段
                            $first_segment = true;

                            foreach ($time_segments as $segment) {
                                // 顯示日期部分  
                                if (!$first_segment) { // 當不是第一段的時候
                                    $line_width_length = mb_strlen($day_part, 'UTF-8'); // 計算第一段文字長度
                                    $line_length = str_repeat('&emsp;', $line_width_length); // 依據前面計算的第一行文字長度，使用一個中文寬度(&emsp;)的空格做repeat 
                                    // echo 'line_width_length:' . $line_width_length . '<br>';
                                    // echo '&emsp;end';
                                    echo '<span class="text-keep food_times_style">' . $line_length . " " . $segment . '</span>';
                                } else {
                                    echo '<span class="text-keep food_times_style">' . $day_part . ":" . $segment . '</span>';
                                }

                                // 如果是第一個時間段，將標誌設為 false
                                $first_segment = false;
                            }
                        }
                        // echo '</ul>';
                        echo '</p>';


                        echo '</div>';


                        echo '<div class="icon-text-container">';
                        echo '<i class="material-icons">list</i>';
                        echo '<p class="card-text">' . $row['cuisine'] . '</p>';
                        echo '</div>'; // icon-text-container 結束 

                        echo '<div class="icon-text-container">';
                        echo '<i class="material-icons">thumb_up</i>';
                        echo '<p class="card-text">' . $row['rating'] . '</p>';
                        echo '</div>'; // icon-text-container 結束 

                       // echo '<div class="icon-text-container">';
                       // echo '<i class="material-icons">business_center</i>';
                     //   echo '<p class="card-text">';
                       // echo !empty($row['office']) ? $row['office'] : '暫無';
                     //   echo '</p>';
                      //  echo '</div>'; // icon-text-container 結束   

                        // echo '<p class="card-text"><small class="text-muted">其他資訊</small></p>';
                        echo '</div>'; // card-body 結束
                        echo '</div>'; // col-md-8 結束

                        echo '</div>'; // row g-0 結束
                        echo '</div>'; // card 結束
                        echo '</div>'; // col-12 col-md-6 結束  
                    }



                    echo '</div>';

                    // 顯示頁碼
                    echo '<div class="pagination">';
                    for ($i = 1; $i <= $total_pages; $i++) {
                        if ($i == $page) {
                            echo '<span>' . $i . '</span>';
                        } else {
                            echo '<a href="food.php?page=' . $i . '">' . $i . '</a>';
                        }
                    }
                    echo '</div>';
                    ?>
                </div>
            </div>
        </div>
        <div id="footer"></div>
</body>

</html>