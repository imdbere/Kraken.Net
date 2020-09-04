#!/bin/bash

rm *.nupkg
rm *.snupkg

dotnet build Kraken.Net.csproj
dotnet pack Kraken.Net.csproj -p:IncludeSymbols=true -p:SymbolPackageFormat=snupkg -o .

nuget sources add -Name "github" -Source "https://nuget.pkg.github.com/coinpanion/index.json" -username "coinpanion" -password "${GITHUB_REGISTRY_TOKEN}"
nuget push '*.nupkg' -SkipDuplicate -Source github

rm *.nupkg
rm *.snupkg