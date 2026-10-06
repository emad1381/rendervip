# Render Xray VLESS Service

این پروژه برای راه‌اندازی پروتکل VLESS + WebSocket روی بستر Render.com طراحی شده است.

## فایل‌های پروژه
- `Dockerfile`: فایل ساخت کانتینر بر پایه Xray
- `entrypoint.sh`: اسکریپت استارت و تنظیم خودکار متغیرهای محیطی
- `config.template.json`: قالب کانفیگ سرور Xray
- `generate_config.js`: اسکریپت ساخت لینک کانفیگ برای کلاینت
