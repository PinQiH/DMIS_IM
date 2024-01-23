import { debugLog, log } from './debugLog.js';

const loadContent = (url, elementId) => {
    fetch(url)
        .then(response => response.text())
        .then(data => {
            log(`Loading content from ${url}`); 
            document.getElementById(elementId).innerHTML = data;
        })
        .catch(error => console.error('Error loading content:', error));
}

export default loadContent;