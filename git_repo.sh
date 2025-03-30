rm -rf .git
git init

git add commit0
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit0 (red)" 

git add commit1
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit1 (red)" 

git checkout -b "branch2"
git add commit2
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit2 (blue)" 

git add commit3
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit3 (blue)" 

git add commit4
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit4 (blue)"

git checkout -b "branch3"
git add commit5
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit5 (blue)" 

git checkout "master"
git add commit6
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit6 (red)" 

git checkout "branch2"
git add commit7
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit7 (blue)" 

git checkout "master"
git add commit8
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit8 (red)" 

git checkout "branch2"
git add commit9
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit9 (blue)"

git checkout "master"
git add commit10
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit10 (red)" 

git checkout "branch3" 
git add commit11
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit11 (blue)" 

git checkout "branch2"
git add commit12
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit12 (blue)" 

git add commit13
git -c user.name="Trulala" -c user.email="trulala@gmail.com" commit -m "commit13 (blue)" 

git checkout "master"
git merge "branch2" --no-commit
git add commit14
git -c user.name="Tralalelo" -c user.email="tralalelo@gmail.com" commit -m "commit14 (red)"
