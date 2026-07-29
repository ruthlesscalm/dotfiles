// ==UserScript==
// @name         Dark Reader
// @namespace    http://tampermonkey.net/
// @version      1.1
// @description  Medium contrast dark mode with grey background
// @author       You
// @match        *://*/*
// @require      https://cdn.jsdelivr.net/npm/darkreader/darkreader.min.js
// @run-at       document-end
// @grant        none
// ==/UserScript==

(function () {
    'use strict';

    if (window.top !== window.self) return;

    DarkReader.enable({
        brightness: 90,
        contrast: 80,
        sepia: 15,
        grayscale: 0
    });
})();
