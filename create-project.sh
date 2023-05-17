PROJECT_NAME=$1

function downloading_directory_structure() {
  git clone https://github.com/b-rajkumar/project-template.git
  mv ./project-template ./$PROJECT_NAME
  cd $PROJECT_NAME
  rm -rf .git
}

function modifiying_file_names() {
  mv ./src/source.js ./src/$PROJECT_NAME.js
  mv ./test/test.js ./test/$PROJECT_NAME-test.js

  sed -i '' "s/test.js/$PROJECT_NAME-test.js/g" run-test.sh
}

function setup_git() {
  git init 
  git add src/ test/ lib/ runtest.sh .gitignore
}

function display_structure() {
  echo "\nCreated directory structure :\n"
  cd ..
  tree $PROJECT_NAME
  echo "\nExecuting runtest.sh to verify directory structure :\n"
  cd $PROJECT_NAME
  ./run-test.sh
}

function main() {
  downloading_directory_structure
  modifiying_file_names
  setup_git
  display_structure
}

main

