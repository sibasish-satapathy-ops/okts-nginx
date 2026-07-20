FROM nginx:1.29-alpine

# Remove the default nginx configuration
RUN rm -f /etc/nginx/conf.d/default.conf

# Copy your custom configuration
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy static website (if applicable)
COPY html/ /usr/share/nginx/html/

# Validate the nginx configuration during image build
RUN nginx -t

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
