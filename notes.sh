
# copy some files from the previous videos
cd ..
docker-react-udemy-grider-2

cp -r docker_kuber

cp -r docker_kubernetes_study/udemy-docker-kubernetes-grider/230430/frontend/* docker-react-udemy-grider-2/


# from the root of the project
npm install
npm run start
npm run test
docker build -t williamszk/docker-react-udemy-grider-2 -f Dockerfile.dev .
docker run -e CI=true williamszk/docker-react-udemy-grider-2 npm run test