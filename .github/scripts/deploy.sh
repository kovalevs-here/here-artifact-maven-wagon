#!/bin/bash
set -ev

# Import gpg key
echo $GPG_PRIVATE_KEY > private.key
gpg --fast-import private.key

# Deploy to Maven Central
mvn --settings .github/settings.xml clean deploy -Prelease