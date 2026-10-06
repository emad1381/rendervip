FROM teddysun/xray:latest

USER root

# Copy configuration template and startup script
COPY config.template.json /etc/xray/config.template.json
COPY entrypoint.sh /entrypoint.sh

# Remove potential Windows carriage return (\r) and grant execution permissions
RUN sed -i 's/\r$//' /entrypoint.sh && chmod +x /entrypoint.sh

# Default environment variables (can be overridden in Render dashboard)
ENV PORT=10000
ENV UUID=a8a7acc3-c7b4-4c93-8215-189043cc8b2f
ENV WSPATH=/vl-stream

ENTRYPOINT ["/entrypoint.sh"]
