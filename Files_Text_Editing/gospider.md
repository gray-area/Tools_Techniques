# GoSpider URLs for use in Xmind


Replace "Domain" with actual domain of spidering

``gospider --sitemap -s https://www.Domain.com -o Domain``

Create file for URLs that are from the sitemap

``cat www_Domain_com | grep sitemap > sitemap.txt``

Cut out "[sitemap] - " from txt file

``cut --complement -c 1-12 sitemap.txt > sitemap``
