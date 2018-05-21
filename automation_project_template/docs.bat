mkdir docs\custom_keywrods
mkdir docs\custom_libraries
mkdir docs\testcases_description
python -m robot.libdoc -P libs ExampleLibrary docs/custom_libraries/ExampleLibrary.html
python -m robot.libdoc -P libs resources/example.txt docs/custom_keywrods/ExampleKeywords.html
python -m robot.testdoc -e ignore . docs/testcases_description/AllTestCases.html
svn add --force docs/*
svn commit docs/* -m "update docs"