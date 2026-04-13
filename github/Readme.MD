# GITHUB Automation

## Prerequisites 

Download Github-CLI

```
sudo apt install gh
```

Incase of installtion failure 

```
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | \
sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
```

```
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | \
sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
```

### Setup gh

- login gh (only once)
``` 
gh auth login 
```
- enter your github creds

- answer the prompts 
use ssh login prefered and create ssh passphrase that will be used everytime when you run the script 


## Step 1: Download gsmart.sh

Make it executable
```
chmod +x gsmart.sh
```
Run Script
``` 
./gsmart.sh
```
## Alternate 

- First Download the script 
- Then run following commands 

```
sudo mv gsmart.sh /usr/local/bin/gsmart
```

Now you can dirctly use the command:
```
gsmart
```