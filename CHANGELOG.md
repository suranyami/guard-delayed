## 0.1.2 (2012-01-25)

 * Now passing the environment in using 'export RAILS_ENV=test;' before calling script/delayed_job
   Thanks to @rwz for this patch
 * Added a meaningful spec that checks the system call using a mock. Much nicer!

## 0.1.0 (2011-07-28)

 * Fixed options for current delayed_job version (from dbloete)
 * Environment settings needed to be passed in via RAILS_ENV=
 
## 0.0.9 (2011-06-22)

 * Fixed argument passing to the start script
 * Cleaned up some documentation.

## 0.0.8 (2011-05-24)

 * Changed template to include :environment => 'development'
 * Changed name from 'guard-delayed_job' to 'guard-delayed'
 * Fixed options passing

## 0.0.3 (2011-05-23)

 * Initial release.
