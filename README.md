
## Update the System and Install Dependencies
Update and upgrade the instance:
```bash
sudo apt update && sudo apt upgrade -y

```

## Installation of Node and NPM  using NVM

```sudo su -
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```
  <p>This will  loads nvm.</p>

```bash
. ~/.nvm/nvm.sh 
```
```bash
nvm i 20
```
  <p> Confirm the node and npm is correctly installed</p>
  

```bash
node -v
```
```bash
npm -v
```
## Install Git and clone repository from GitHub
  <p> To install git, run below commands in the terminal window</p>
  
```bash
sudo apt-get update -y

```

```bash
sudo apt-get install git -y

```
  <p> verify if   git installed correctlhy</p>
  <p> This command will print the git version in the terminal.</p>

```bash
git — version
```
  <p>  clone the code repository from Github</p>
  
```bash
git clone https://github.com/AhmedFakharABbas/graphql-nest-api.git
```
  <p>  Lets move to the project directory</p>
  
```bash
cd nodejs-on-ec2
npm install
```
  <p> Lets start the prject</p>
  
```bash
npm start
```

## Stay in touch

- Author - Ahmed Fakhar Abbas
- Website - [https://thecodemood.com](https://thecodemood.com/)
- Twitter - [@AhmedFakhaAbbas](https://x.com/AhmedFakhaAbbas)
- YouTube - [@ThecodeMoodOffical](https://www.youtube.com/@ThecodeMoodOffical)

  
## License

Nest is [MIT licensed](LICENSE).
