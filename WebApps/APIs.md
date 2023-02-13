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
