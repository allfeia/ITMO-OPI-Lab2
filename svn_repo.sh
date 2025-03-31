rm -rf repo working_copy

svnadmin create repo
REPO_URL="file://$(pwd)/repo"
cd repo
svn mkdir -m "standart structure" $REPO_URL/trunk $REPO_URL/branches
cd ..
svn checkout $REPO_URL/trunk working_copy
cd working_copy

cp -r ../commits/commit0 . 
svn add commit0
svn commit -m "commit0 (red)" --username Tralalelo --password krokodilo

cp -r ../commits/commit1 .
svn add commit1
svn commit -m "commit1 (red)" --username Tralalelo --password krokodilo

svn copy $REPO_URL/trunk $REPO_URL/branches/branch2 -m "creating branch2"
svn switch $REPO_URL/branches/branch2
cp -r ../commits/commit2 .
svn add commit2
svn commit -m "commit2 (blue)" --username Trulala --password pepperoni

cp -r ../commits/commit3 .
svn add commit3
svn commit -m "commit3 (blue)" --username Trulala --password pepperoni

cp -r ../commits/commit4 .
svn add commit4
svn commit -m "commit4 (blue)" --username Trulala --password pepperoni

svn copy $REPO_URL/branches/branch2 $REPO_URL/branches/branch3 -m "creating branch3"
svn switch $REPO_URL/branches/branch3 
cp -r ../commits/commit5 .
svn add commit5
svn commit -m "commit5 (blue)" --username Trulala --password pepperoni             

svn switch $REPO_URL/trunk
cp -r ../commits/commit6 .
svn add commit6
svn commit -m "commit6 (red)" --username Tralalelo --password krokodilo  

svn switch $REPO_URL/branches/branch2
cp -r ../commits/commit7 .
svn add commit7
svn commit -m "commit7 (blue)" --username Trulala --password pepperoni

svn switch $REPO_URL/trunk 
cp -r ../commits/commit8 .
svn add commit8
svn commit -m "commit8 (red)" --username Tralalelo --password krokodilo

svn switch $REPO_URL/branches/branch2
cp -r ../commits/commit9 .
svn add commit9
svn commit -m "commit9 (blue)" --username Trulala --password pepperoni

svn switch $REPO_URL/trunk     
cp -r ../commits/commit10 .
svn add commit10
svn commit -m "commit10 (red)" --username Tralalelo --password krokodilo

svn switch $REPO_URL/branches/branch3
cp -r ../commits/commit11 .
svn add commit11 
svn commit -m "commit11 (blue)" --username Trulala --password pepperoni

svn switch $REPO_URL/branches/branch2
cp -r ../commits/commit12 .
svn add commit12 
svn commit -m "commit12 (blue)" --username Trulala --password pepperoni

cp -r ../commits/commit13 .
svn add commit13 
svn commit -m "commit13 (blue)" --username Trulala --password pepperoni

svn switch $REPO_URL/trunk     
svn merge $REPO_URL/branches/branch2
svn commit -m "merger branch2 into trunk" --username Tralalelo --password krokodilo
cp -r ../commits/commit14 .
svn add commit14
svn commit -m "commit14 (red)" --username Tralalelo --password krokodilo

svn update
svn log -v
