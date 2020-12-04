## EVALUATION CRITERIA:
    
**+** Dockerfile is prepared, image is building. Image size is minimised to be less than 500 MB.
![alt text](https://i.imgur.com/hxqgBgw.png)

**+** - Dockerfile is optimized. Files that change more often and commands that depend on them should be included later, files and commands that change less should be at the top.

**+** - Folders are added to .dockerignore, with explanations. At least 2 big directories should be excluded from build context. Elastic Beanstalk application is initialized.

**+** - Environment is created and the app is deployed to the AWS cloud. You must provide a link to your GitHub repo with Cart API service or PR with created Dockerfile and related configurations.

**+** - FE application is updated with Cart API endpoint. You must provide a PR with updates in your FE repository and OPTIONALLY link to deployed front-end app which makes proper API calls to your Cart service.

FE PR link: https://github.com/DevandScorp/aws-shop-frontend/pull/5

Link to working API: http://devandscorp-cart-api-development.eu-west-1.elasticbeanstalk.com/api
