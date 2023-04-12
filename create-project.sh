PROJECT_NAME=$1

cp -R ~/projects/build-project/project-template ./$PROJECT_NAME

cd $PROJECT_NAME

mv ./src/source.js ./src/$PROJECT_NAME.js
mv ./test/test.js ./test/$PROJECT_NAME-test.js

sed -i '' -e "s/test.js/$PROJECT_NAME-test.js/g" ./runtest.sh 
sed -i '' -e "s/source.js/$PROJECT_NAME.js/g" ./test/$PROJECT_NAME-test.js 

