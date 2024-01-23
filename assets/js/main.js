import loadContent from './utils/loadComponents.js';
import { debugLog, log } from './utils/debugLog.js';

log("main.js is loaded");
log(document.getElementById('header')); // 檢查是否為 null
log(document.getElementById('footer')); // 檢查是否為 null

loadContent('./components/Header/header.php', 'header');
loadContent('./components/Footer/footer.php', 'footer');