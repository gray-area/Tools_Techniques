
# Notes taken from APISec University

## Tests to Perform

* Information Disclosure
* Broken Object-Level Authorization (BOLA)
* Broken User Authentication
* Excessive Data Exposure
* Lack of Resources / Rate Limiting
* Broken Function Level Authorization
* Mass Assignment
* Security Misconfiguration
* Injections
* Improper Assets Management
* Business Logic Flaws


## Methodology

### API Recon

### Passive

* Google Dorking
    * Search Google for "Domain api"
    * intitle:"api" site:"domain"
    * inurl:"/api/v1" site:"domain"
    * intitle:"json" site:domain
 
 * Git Dorking - Check Repos first, then Issues
    * search: "domain api"
    * search: "domain api key" (Issues tab)
    * search: "api key exposed"
    * "extension:json domain"
    * "authorization: Bearer"
    * "filename:swagger.json" > import to Postman
 
 * Shodan
    * search: domain
    * search: "content-type: application/json"
    * search: "wp-json" (WordPress)
 
 * Wayback Machine
    * search: "exact URL" > year > day > click link

### Active

* nmap
   * ``nmap -sC -sV {IP}``
   * ``nmap -p- {ip)``
* OWASP AMASS
   * ``amass enum -list``
      * Create config file for service API keys: ``sudo curl https://raw.githubusercontent.com/OWASP/Amass/master/examples/config.ini > ~/.config/amass/config.ini``
   * ``amass enum -active -d {domain} | grep api``
   * ``amass intel -addr {IP Addresses}``
   * ``amass intel -d {domain} –whois``
   * ``amass enum -passive -d {domain}``
   * ``amass enum -active -d {domain}``
   * ``amass enum -active -brute -w /usr/share/wordlists/API_superlist -d {domain} -dir [directory name]``
* Kiterunner
* GoBuster


## Endpoint Analysis

* mitmweb / mitmproxy
   * Save prooxied traffic from web interface
* mitm2swagger
   * sudo mitmproxy2swagger -i /Downloads/flows -o spec.yml -p http://{API} -f flow
   * edit spec.yml file and remove "ignore:" from entries you want included
   * sudo mitmproxy2swagger -i /Downloads/flows -o spec.yml -p http://{API} -f flow --examples
* Postman
   * Import spec.yml file


## Authentication Attacks

* Password Spraying
   * Find password policy and narrow down list
   * Use intercept, not proxy to get data structure
* Password Brute Forcing
   * Mentalist - sc0tfree GitHub
   * Cupp - Mebus GitHub
* Fuzzing
   * wfuzz
* Password Lists
   * Use Season+Year+Symbol (Summer2023!, Spring2022?, etc...)
   * Use Month+Day+Year+Symbol (January212017!, July42022!, etc...)
   * Use Name@Year+symbol (Twitter@2022, Dorsey@2022, etc...)
   * Use Initials+Year+Symbol (JPD1976!, etc...)
