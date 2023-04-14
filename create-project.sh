PROJECT_NAME=$1

mv ./project-template ./$PROJECT_NAME

cd $PROJECT_NAME

mv ./src/source.js ./src/$PROJECT_NAME.js
mv ./test/test.js ./test/$PROJECT_NAME-test.js

sed -i '' -e "s/test.js/$PROJECT_NAME-test.js/g" ./run-test.sh 
sed -i '' -e "s/source.js/$PROJECT_NAME.js/g" ./test/$PROJECT_NAME-test.js 

git init

