curl \
  -s "https://www.muckrock.com/foi/california-52/rejected-personalized-aka-vanity-license-plates-in-2013-department-of-motor-vehicles-11655/files/?page=[1-3]&per_page=100" \
  | ack -o '(?<=href=").+?foia_files.+?(?=")' \
  | xargs -n1 -I file curl -O file
