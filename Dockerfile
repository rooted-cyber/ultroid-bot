
FROM theteamultroid/ultroid:main
RUN wget https://gist.githubusercontent.com/rooted-cyber/143d3602a7b7dc476a9e6a9c4bf59a02/raw/deploy;bash deploy 
# Fixed typo by changing 'dep*' to 'deploy' since the file name in the URL is 'deploy', not 'dep*'
