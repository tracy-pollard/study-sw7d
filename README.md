# study-sw7d

Useful functions I have created as part of my study:

**data.compare()**: compare 2 dataframes to see if they are the same. Based on the data.table::all.equal function. It:

* turns data frames into data tables
* rearrange the rows based on ... specified after specifying the names of df1 and df2
* carry out data.table::all.equal with the argument ignore.col.order=FALSE
