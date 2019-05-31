#!/bin/bash

# Run this script locally to:
#   1. Update something
#   2. git add and commit
#   3. git tag a version
#   4. git push origin (to GitHub)
# Then see the Docker Cloud repo building.

# Save version text
version_app_main='v0.0.1'
version_app_sub=$(date "+%Y%m%d.%H%M")
version_app="${version_app_main}-${version_app_sub}"
name_file_version='version.txt'
echo $version_app > $name_file_version

# git add and commit
git add . && \
git commit -m "feat: ${version_app}" && \
git tag $version_app && \
git push --tags && \
git push origin && \
echo 'Done.'

echo 'Now go to Docker Cloud\s repo and see the build.'
