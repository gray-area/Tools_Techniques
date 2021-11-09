## Shodan Cheatsheet

Search Qualifiers:

```city:``` find devices in a particular city.

```country:``` find devices in a particular country.

```geo:``` search for specific GPS coordinates.

```hostname:``` find values that match the hostname.

```product:``` search the name of the software or product identified in the banner.

```os:``` search based on operating system.

```port:``` find particular ports that are open.

```before/after:``` find results within a timeframe.

##

Example Searches:

• Locate Internet accessible SQL servers: ```product:"SQL" port:"1433"```

• Locate Internet accessible Windows machines with SMB exposed to the Internet: ```os: "windows" port:"445"```

• Locate Internet accessible Windows XP devices: ```os:”windows xp”```

• Locate Internet accessible OPC UA Discovery Server: ```product:”OPC” port:”4840”```

• Locate default passwords: ```"password is" OR "default is" -"required"```

• Locate misconfigured WordPress sites: ```http.html:"* The wp-config.php creation script uses this file"```
The wp-config.php if accessed can give out the database credentials.


https://thedarksource.com/shodan-cheat-sheet/
