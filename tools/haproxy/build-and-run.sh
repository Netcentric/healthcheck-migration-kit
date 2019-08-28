echo
echo "Building..."
docker build --tag aem-haproxy-image .
echo
echo "Running..."
docker run -d -p 32700:32700 -p 8000:80 --name aem-haproxy aem-haproxy-image
echo
echo "Logs/tail"
echo
./tail.sh