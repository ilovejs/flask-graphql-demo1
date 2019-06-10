## Docker-compose

  It very hard to get the right version on windows
    variants on environment incl:
      [] hyper-v on / off  (there are 4 tick in windows feature)
      [] azure vm (inside vm, ubuntu environment)
      [] wsl (docker-daemon require to install docker-desktop as well. Expose its port, Don't be fooled)
          microsfot azure document has docker-compose example for wordpress. But example like this repo wont' work
          Either permission error or something too common to fail like others use...
          
          Conclusion: docker-machine (virtualbox) is fighting with hyper-v, oos vs msft compatibility issue sucks..

          Solution: Install on azure vm as docker-machine, high chance of success.
                    Don't care docker version... 3.7 and 3.3 has different syntax. Waste of time to tweak.

                    Run local !

docker-compose build
docker-compose up

## Local run

  - start server
  
    ./run.sh

  - use the returned server port and url to visit /graphql

    http://localhost:5000/graphql

  - same query

    ```{graphql}
    query participantQuery {
      media(id: "media/movie/ocean11") {
        ... on MovieMediaDetail {
          title
          participant(relationship: "produced by") {
            ... on PersonDetails {
              name
            }
            ... on CompanyDetails {
              companyName
            }
          }
        }
      }
    }
    ```

  
