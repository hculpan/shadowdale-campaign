Remove-Item ./site.zip 
bundle exec jekyll clean
bundle exec jekyll build
Compress-Archive -Path '_site/*' -DestinationPath './site.zip'
scp -i C:\Users\harry\culpan_org .\site.zip harry@culpan.org:~