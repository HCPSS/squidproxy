# squidproxy
Proxy container with basic auth

To generate password hashes:
```
docker run --rm php php -r 'echo password_hash("your password here", PASSWORD_BCRYPT)."\n";'
```

Set PASSWORDS environment variable to:
```
user1:$2y$10$5.TYA.ScrFHcridGfctoE.2OvqVBDfWLBrodA28M44FeS3hgX9sxe
user2:$2y$10$ntaX.rwMfnmcfahPE.A8VuWsPqx.aVe7U/jf.Fii1uyAhzEcpzudm
```

Or create a secret and with the same content and specify the path to the secret in the PASSWORDS_FILE environment variable.
