/**
 * Helper script to generate VLESS client link and configuration.
 * Usage: node generate_config.js <your-render-domain> [uuid] [path]
 * Example: node generate_config.js my-app.onrender.com
 */

const args = process.argv.slice(2);
const domain = args[0] ? args[0].replace(/^https?:\/\//, '').replace(/\/$/, '') : 'YOUR-APP-NAME.onrender.com';
const uuid = args[1] || 'a8a7acc3-c7b4-4c93-8215-189043cc8b2f';
const wsPath = args[2] || '/vl-stream';

const encodedPath = encodeURIComponent(wsPath);
const vlessLink = `vless://${uuid}@${domain}:443?type=ws&security=tls&sni=${domain}&host=${domain}&path=${encodedPath}#Render-VLESS`;

console.log('\n======================================================');
console.log('       Render.com VLESS Config Generator');
console.log('======================================================\n');

console.log('Domain/Host  :', domain);
console.log('Port         : 443');
console.log('UUID         :', uuid);
console.log('Transport    : ws (WebSocket)');
console.log('Path         :', wsPath);
console.log('TLS          : Enabled (sni = ' + domain + ')');
console.log('\n------------------------------------------------------');
console.log('>> VLESS Link (Copy & Import into v2rayNG/v2rayN/NekoBox):');
console.log('------------------------------------------------------');
console.log(vlessLink);
console.log('------------------------------------------------------\n');
