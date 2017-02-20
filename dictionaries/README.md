# In the Case of Dictionaries

For my latest project, I need to retrieve user information from Active Directory via LDAP.  When searching users, the LDAP client I'm using returns an array of hashes, with each hash written like so:

```ruby
{ dn: ["CN=Test User (tuser),OU=Test,OU=Users,OU=CORP,DC=example,DC=com"],
  objectclass: ["top"],
  cn: ["Test User (tuser)"],
  sn: ["User"],
  l: ["chi"],
  title: ["TEST ACCOUNT"],
  givenname: ["Test"],
  distinguishedname: ["CN=Test User (tuser),OU=Test,OU=Users,OU=CORP,DC=example,DC=com"],
  displayname: ["Test User"],
  name: ["Test User (tuser)"] }
```

In LDAP, these keys are case-insensitive.  As a result, the gem we need to feed this into isn't very consistent in how it accesses the hash.  We've found it references LDAP attributes like so:

```ruby
user[:dn]
user["cn"]
user["givenname"]
user[:SN]
user["givenName"]
user[:givenName]
```

Assuming for some reason we have to use the gem as-is, what would be the optimal way to support indifferent, case-insensitive access to this hash?
