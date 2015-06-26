## 0.3.3 (2015-06-26)

* Loosened `guard` version dependency to be >= 3

## 0.3.2 (2015-06-25)

* Version dependencies of `delayed_job`, `guard` updated.

## 0.3.1 (2015-02-19)

* Modified the dependencies to support Guard 2

## 0.3.0 (2014-11-27)

* Upgraded to work with Guard 2.
* Merged option to add `root`.
* Added MIT licence to GemSpec.

## 0.2.1 (2012-12-10)

* Fixed `script/delayed\_job` call when passing `RAILS_ENV` in dash shell (not sure if it happens with other ones).

## 0.2.0 (2012-07-04)

* Merged pull request from @drewda to support guard 1.1
* Minor doc changes.

## 0.1.2 (2012-01-25)

* Now passing the environment in using 'export RAILS\_ENV=test;' before calling `script/delayed\_job`. Thanks to @rwz for this patch.
* Added a meaningful spec that checks the system call using a mock. Much nicer!

## 0.1.0 (2011-07-28)

* Fixed options for current delayed_job version (from dbloete)
* Environment settings needed to be passed in via `RAILS_ENV=xxx`

## 0.0.9 (2011-06-22)

* Fixed argument passing to the start script
* Cleaned up some documentation.

## 0.0.8 (2011-05-24)

* Changed template to include `:environment => 'development'`
* Changed name from 'guard-delayed_job' to 'guard-delayed'
* Fixed options passing

## 0.0.3 (2011-05-23)

* Initial release.
