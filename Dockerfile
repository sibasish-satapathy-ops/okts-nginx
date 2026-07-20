FROM nginx:1.29-alpine

# Remove default nginx configuration
RUN rm -f /etc/nginx/conf.d/default.conf

# Copy your nginx configuration
COPY default.conf /etc/nginx/conf.d/default.conf

# Validate nginx configuration
RUN nginx -t

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
