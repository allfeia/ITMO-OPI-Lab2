rm -rf src
mkdir src
cd src
git init

cp -r ../commits/commit0/* .
git add .
git config --global user.name "Tralalelo"
git config --global user.email "tralalelo@gmail.com"
git commit -m "commit0 (red)"

cp -r ../commits/commit1/* .
git add .
git config --global user.name "Tralalelo"
git config --global user.email "tralalelo@gmail.com"
git commit -m "commit1 (red)"

git checkout -b "branch2"
cp -r ../commits/commit2/* .
git add .
git config --global user.name "Trulala"
git config --global user.email "trulala@gmail.com"
git commit -m "commit2 (blue)"

cp -r ../commits/commit3/* .
git add .
git config --global user.name "Trulala"
git config --global user.email "trulala@gmail.com"
git commit -m "commit3 (blue)"

cp -r ../commits/commit4/* .
git add .
git config --global user.name "Trulala"
git config --global user.email "trulala@gmail.com"
git commit -m "commit4 (blue)"

git checkout -b "branch3"
cp -r ../commits/commit5/* .
git add .
git config --global user.name "Trulala"
git config --global user.email "trulala@gmail.com"
git commit -m "commit5 (blue)"

git checkout "master"
cp -r ../commits/commit6/* .
git add .
git config --global user.name "Tralalelo"
git config --global user.email "tralalelo@gmail.com"
git commit -m "commit6 (red)"

git checkout "branch2"
cp -r ../commits/commit7/* .
git add .
git config --global user.name "Trulala"
git config --global user.email "trulala@gmail.com"
git commit -m "commit7 (blue)"

git checkout "master"
cp -r ../commits/commit8/* .
git add .
git config --global user.name "Tralalelo"
git config --global user.email "tralalelo@gmail.com"
git commit -m "commit8 (red)"

git checkout "branch2"
cp -r ../commits/commit9/* .
git add .
git config --global user.name "Trulala"
git config --global user.email "trulala@gmail.com"
git commit -m "commit9 (blue)"

git checkout "master"
cp -r ../commits/commit10/* .
git add .
git config --global user.name "Tralalelo"
git config --global user.email "tralalelo@gmail.com"
git commit -m "commit10 (red)"

git checkout "branch3"
cp -r ../commits/commit11/* .
git add .
git config --global user.name "Trulala"
git config --global user.email "trulala@gmail.com"
git commit -m "commit11 (blue)"

git checkout "branch2"
git merge "branch3" --no-commit
cp -r ../commits/commit12/* .
git add .
git config --global user.name "Trulala"
git config --global user.email "trulala@gmail.com"
git commit -m "commit12 (blue)"

cp -r ../commits/commit13/* .
git add .
git config --global user.name "Trulala"
git config --global user.email "trulala@gmail.com"
git commit -m "commit13 (blue)"

git checkout "master"
#git merge "branch2" --no-commit
git merge -X ours "branch2" --no-commit
#git merge -X theirs "branch2" --no-commit
cp -r ../commits/commit14/* .
git add .
git config --global user.name "Tralalelo"
git config --global user.email "tralalelo@gmail.com"
git commit -m "commit14 (red)"

git log --graph
