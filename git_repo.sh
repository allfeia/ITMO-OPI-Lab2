rm -rf src
mkdir src
cd src
git init

cp -r ../commits/commit0 .
git add commit0
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit0 (red)" 

cp -r ../commits/commit1 .
git add commit1
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit1 (red)" 

git checkout -b "branch2"
cp -r ../commits/commit2 .
git add commit2
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit2 (blue)" 

cp -r ../commits/commit3 .
git add commit3
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit3 (blue)" 

cp -r ../commits/commit4 .
git add commit4
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit4 (blue)"

git checkout -b "branch3"
cp -r ../commits/commit5 .
git add commit5
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit5 (blue)" 

git checkout "master"
cp -r ../commits/commit6 .
git add commit6
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit6 (red)" 

git checkout "branch2"
cp -r ../commits/commit7 .
git add commit7
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit7 (blue)" 

git checkout "master"
cp -r ../commits/commit8 .
git add commit8
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit8 (red)" 

git checkout "branch2"
cp -r ../commits/commit9 .
git add commit9
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit9 (blue)"

git checkout "master"
cp -r ../commits/commit10 .
git add commit10
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit10 (red)" 

git checkout "branch3" 
cp -r ../commits/commit11 .
git add commit11
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit11 (blue)" 

git checkout "branch2"
cp -r ../commits/commit12 .
git add commit12
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit12 (blue)" 

cp -r ../commits/commit13 .
git add commit13
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit13 (blue)" 

git checkout "master"
git merge "branch2" --no-commit
cp -r ../commits/commit14 .
git add commit14
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit14 (red)"
