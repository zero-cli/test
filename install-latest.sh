#! /bin/sh
for example in $(ls ./examples); do
  pushd ./examples/$example
  yarn add @zero-cli/zero-test@latest --dev
  yarn jest --clear-cache
  yarn zero-test
  popd
done
