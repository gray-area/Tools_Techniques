# How to update OpenVAS Feeds manually

### GVMD DATA

``sudo greenbone-feed-sync --type GVMD_DATA``


### SCAP DATA

``sudo greenbone-feed-sync --type SCAP``


### CERT DATA

``sudo greenbone-feed-sync --type CERT``


Once feeds are updated, force an entire update:

``sudo gvm-feed-update -h``
