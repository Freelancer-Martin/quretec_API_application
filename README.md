README.md
## Quretec DEMO API aplication 
Quretec example demo application about API requests and different updates with NodeJS


## Description
NodeJS with bootstrap application where you can look and update merit aktiva invoices and same time makeing request for merit aktiva API
## HTTPS SSL certificate generation:
Make sure that OpenSSL has installed in your computer and variable path is included in Environment Variables 
### Creating an SSL Certificate
To configure an SSL certificate, you can either use a public, trusted certificate or a self-signed certificate.

If you’re running the application in a production environment, always be sure to acquire and install a trusted certificate, not a self-signed certificate!

### Creating self-signed certificate (for testing)
1. First, generate a key file to use for self-signed certificate generation with the command below. The command will create a private key as a file called key.pem.
```
openssl genrsa -out key.pem
```
2. Next, generate a certificate signing request (CSR) with the command below. You’ll need a CSR to provide all of the input necessary to create the actual certificate.
```
openssl req -new -key key.pem -out csr.pem
```

3. Finally, generate your certificate by providing the private key created to sign it with the public key created in step two with an expiry date of 9,999 days. This command below will create a certificate called cert.pem.
```
openssl x509 -req -days 9999 -in csr.pem -signkey key.pem -out cert.pem
```

3. Visit [https://localhost:3000](https://localhost:3000) and make your web browser trust your self-signed certificate by clicking advanced and then clicking the link to continue to the website.

## Initialization

1. Clone repo
2. Run `cp` .env.example .env to create an enviroment file
2. Run `npm install` to install dependencies
3. Run `npx prisma migrate dev --name initial` 
4. Run `npm start` to start server
   

## Testing

1. Run `npm test` in the root directory