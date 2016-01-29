vagrant up win --provision-with choco,proxyconf,python,buildslave,logonasservice,buildslave-service,buildslave-service2,buildslave-setup,buildslave-service3,vcs,cmake
vagrant reload win
vagrant provision win --provision-with vs

