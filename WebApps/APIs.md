
# Notes taken from APISec University

## API Recon

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
* Kitrunner
* GoBuster
* 
