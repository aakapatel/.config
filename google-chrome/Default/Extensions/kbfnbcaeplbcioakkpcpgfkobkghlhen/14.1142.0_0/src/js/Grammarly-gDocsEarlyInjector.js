!function(){var e;function t(e,t,n,o=document,i=!1,a=!1,r,s){const c=e,l=o.documentElement;if(i){const e=o.createElement("link");e.href=c,e.rel="preload",e.as="script",e.onload=()=>{e.remove()},l.prepend(e)}const d=o.createElement("script");d.async=!1,d.defer=!1,d.src=c,d.type="text/javascript",t&&d.setAttribute("data-ext-id",t),n&&d.setAttribute("data-ext-version",n),a&&d.setAttribute("data-ext-minimal","true"),d.onload=()=>{null==r||r(),d.remove()},d.onerror=()=>{null==s||s()},l.prepend(d)}!function(e){const t="grammarly-desktop-integration";e.inject=function(e=document.documentElement){var n,o;const i=`\n      div.${t} {\n        position: absolute;\n        width: 1px;\n        height: 1px;\n        padding: 0;\n        margin: -1px;\n        overflow: hidden;\n        clip: rect(0, 0, 0, 0);\n        white-space: nowrap;\n        border: 0;\n        -moz-user-select: none;\n        -webkit-user-select: none;\n        -ms-user-select:none;\n        user-select:none;\n      }\n\n      div.${t}:before {\n        content: attr(data-content);\n      }\n    `,a=document.createElement("style");a.textContent=i;const r=document.createElement("div");r.setAttribute("aria-label","grammarly-integration"),r.setAttribute("role","group"),r.setAttribute("tabindex","-1"),r.setAttribute("class",t);const s=document.createElement(t);return s.attachShadow({mode:"open"}),s.setAttribute("data-grammarly-shadow-root","true"),null===(n=s.shadowRoot)||void 0===n||n.appendChild(a),null===(o=s.shadowRoot)||void 0===o||o.appendChild(r),e.appendChild(s),{activate:({isActive:e,isUserDisabled:t,mode:n})=>{null==r||r.setAttribute("data-content",JSON.stringify(n?{mode:n,isActive:e,isUserDisabled:t}:{isActive:e}))},remove:()=>{var e;null===(e=null==s?void 0:s.parentNode)||void 0===e||e.removeChild(s)}}},e.isInjected=function(){return!!document.querySelector(t)}}(e||(e={}));const n="message:to-priv";var o;function i(){return(65536*(1+Math.random())|0).toString(16).substring(1)}!function(e){e[e.success=0]="success",e[e.successWithEmpty=1]="successWithEmpty",e[e.alreadyMigrated=2]="alreadyMigrated"}(o||(o={}));var a;!function(e){e.syncDevtoolsInitialStateWithTab="syncDevtoolsInitialStateWithTab"}(a||(a={}));class r{constructor(e,t){this.port=e.runtime.connect({name:t})}onMessage(e){this.port.onMessage.addListener(e)}onDisconnect(e){this.port.onDisconnect.addListener(e)}postMessage(e){this.port.postMessage(e)}}!function(n,o,i,a){var r,s,c;a({level:"INFO",logger:"gDocsEarlyInjector.startInitialization"});try{t(o("Grammarly-gDocsEarlyInjectedCs.js"),n,void 0,void 0,!0,void 0,(()=>a({level:"INFO",logger:"gDocsEarlyInjector.injected",femetricsExtra:{script:"gDocsEarlyInjectedCs"}})),(()=>a({level:"ERROR",logger:"gDocsEarlyInjector.injectError",femetricsExtra:{script:"gDocsEarlyInjectedCs"}})));const l=i(),d=Boolean(null===(r=l.canvasWithSVG)||void 0===r?void 0:r.enabledWithExperiment),v=Boolean(null===(s=l.canvasWithSVG)||void 0===s?void 0:s.enabledWithDynamicConfig);(Boolean(null===(c=l.canvasWithSVG)||void 0===c?void 0:c.forcedWithDynamicConfig)||v&&d)&&t(o("Grammarly-gDocsAnnotatedCanvasEarlyInjected.js"),n,void 0,void 0,!0,void 0,(()=>a({level:"INFO",logger:"gDocsEarlyInjector.injected",femetricsExtra:{script:"gDocsAnnotatedCanvasEarlyInjectedCs"}})),(()=>a({level:"ERROR",logger:"gDocsEarlyInjector.injectError",femetricsExtra:{script:"gDocsAnnotatedCanvasEarlyInjectedCs"}}))),e.inject().activate({isActive:!0}),a({level:"INFO",logger:"gDocsEarlyInjector.finishInitialization"})}catch(e){a({level:"ERROR",logger:"gDocsEarlyInjector.failInitialization",error:e})}}(chrome.runtime.id,(e=>chrome.runtime.getURL(`src/js/${e}`)),function(e,t,n,o){function i(){const e=t.getItem(n);if(e)try{return JSON.parse(e)}catch(e){}}return chrome.storage.local.get(e,(e=>{const a=JSON.stringify(o(i(),e));t.setItem(n,a)})),chrome.storage.onChanged.addListener(((a,r)=>{if("local"===r){const r={};let s=!1;for(const[t,n]of Object.entries(a))e.includes(t)&&(r[t]=n.newValue,s=!0);if(s){const e=JSON.stringify(o(i(),r));t.setItem(n,e)}}})),function(){return o(i(),{})}}(["user","dynamicConfig"],localStorage,"grammarly.gDocs",(function(e,t){var n,o,i,a,r,s,c,l,d,v;return{canvasWithSVG:{enabledWithDynamicConfig:Boolean((null===(n=t.dynamicConfig)||void 0===n?void 0:n.gDocsCanvasConfig)?null===(i=null===(o=t.dynamicConfig)||void 0===o?void 0:o.gDocsCanvasConfig)||void 0===i?void 0:i.useAnnotatedCanvas:null===(a=null==e?void 0:e.canvasWithSVG)||void 0===a?void 0:a.enabledWithDynamicConfig),enabledWithExperiment:Boolean((null===(r=t.user)||void 0===r?void 0:r.experiments)?t.user.experiments.gDocsAnnotatedCanvas:null===(s=null==e?void 0:e.canvasWithSVG)||void 0===s?void 0:s.enabledWithExperiment),forcedWithDynamicConfig:Boolean((null===(c=t.dynamicConfig)||void 0===c?void 0:c.gDocsCanvasConfig)?null===(d=null===(l=t.dynamicConfig)||void 0===l?void 0:l.gDocsCanvasConfig)||void 0===d?void 0:d.forceSVGMapping:null===(v=null==e?void 0:e.canvasWithSVG)||void 0===v?void 0:v.forcedWithDynamicConfig)}}})),function(e){const t=e(n);return function(e){t.postMessage({type:"cs-to-bg-rpc-1557421403805",callid:i()+i()+"-"+i()+"-"+i()+"-"+i()+"-"+i()+i()+i(),content:{data:{args:["tracking/RPC",["sendFelogEvent",Object.assign({sendToFemetrics:!0},e)]],method:"trackCall"}}})}}((e=>new r(chrome,e))))}();