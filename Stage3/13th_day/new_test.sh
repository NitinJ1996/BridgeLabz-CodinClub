#!/bin/bash -x

case $postal in
        ^!(a-zA-Z\s.)[0-9\s]*!(a-zA-Z\W\s)$) echo "$postal valid" ;;
        [0-9]{3}[\s]+[0-9]{3}) echo "$postal valid" ;;
        *) echo "$postal invalid" ;;
esac

case $postal in
        ^(! [a-zA-Z])+([0-9\ ])) echo "Valid" ;;
        *) echo "invalid" ;;
esac

