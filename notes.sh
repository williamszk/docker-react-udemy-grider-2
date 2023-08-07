
# -----------------------------------------------------------------------------
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

# -----------------------------------------------------------------------------
# to serve the built react app
npm install -g serve
serve build

# -----------------------------------------------------------------------------
# build script that creates the .zip bundle to be sent to an EB running docker
rm -rf bundle_aws_eb
mkdir bundle_aws_eb
cp -r public bundle_aws_eb/
cp -r src bundle_aws_eb/
cp -r docker-compose.yml bundle_aws_eb/
cp -r Dockerfile bundle_aws_eb/
cp -r package.json bundle_aws_eb/
cp -r package-lock.json bundle_aws_eb/

rm bundle_aws_eb.zip
(cd bundle_aws_eb && zip -r ../bundle_aws_eb.zip .)


# -----------------------------------------------------------------------------

