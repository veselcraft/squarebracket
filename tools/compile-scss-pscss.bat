@echo off

set pscss_path="vendor/scssphp/scssphp/bin/pscss"

:: "Compressed" style gives lowest filesize
:: Load path is assuming you're running this script from the root of the sB site directory
set common_arguments="--style=compressed --load-path=./"

php %pscss_path% %common_arguments% bootstrap/bs.scss > assets/bs.css
php %pscss_path% %common_arguments% bootstrap/bs-dark.scss > assets/bs-dark.css
