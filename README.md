# Fake SMTP server based on https://github.com/Nilhcem/FakeSMTP
Is a wrapper around the FakeSMTP java app running on alpine linux with openjdk 8's JRE

# Start with docker:
This will start an instance that puts the emails in `/tmp/fakemail` and listens on port `1025`

```bash
docker run -d --name fakesmtp -p 1025:25 -v /tmp/fakemail:/var/mail digiplant/fake-smtp
```

## Or use in your docker compose file:
This will start an instance that listens on port `1025` and saves the emails in the `email` folder in the project

```
version: "2"

services:
  fakesmtp:
    image: digiplant/fake-smtp
    ports:
      - "1025:25"

    volumes:
      - ./email:/var/mail
```
