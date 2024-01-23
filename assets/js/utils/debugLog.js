// ### Debugging Utilities ###
import { DEBUG_CONSOLE_FLAG } from '../config/config.js';  

/**
 * DEBUG_MODE is a flag to toggle debugging features on or off.
 * Set this to 'true' to enable debugging, 'false' to disable.
 * @type {boolean}
 */
export const DEBUG_MODE = DEBUG_CONSOLE_FLAG.DEBUG_MODE; 

/**
 * Logs messages to the console when debugging is enabled.
 *
 * @param {...any} args - Arguments to log. These will be passed to `console.log`.
 * @example
 * debugLog("This is a debug message", someVariable);
 */
export function debugLog(...args) {
  if (DEBUG_MODE) {
    console.log(...args);
  }
}

/**
 * Simplified logging function that delegates to `debugLog`.
 * 
 * @param {...any} args - Arguments to log. 
 */
export function log(...args) {
  debugLog(...args);
}