# **Assignment 3**

## Assignment 1 :- 

### Question 1: Explain this following bash script:

```bash
#!/bin/bash
space_free=$( df -h | awk '{ print $5 }' | sort -n | tail -n 1 | sed 's/%//' )
case $space_free in
  [1-5]*)
    echo Plenty of disk space available
  ;;
  [6-7]*)
    echo There could be a problem in the near future
  ;;
  8*)
    echo Maybe we should look at clearing out old files
  ;;
  9*)
    echo We could have a serious problem on our hands soon
  ;;
  *)
    echo Something is not quite right here
  ;;
esac
```

Lets break this command ->  df -h | awk '{ print $5 }' | sort -n | tail -n 1 | sed 's/%//' 

- df -h : disk free is the command that displays all currently mounted file system along with total space used and total space available.
  Ouput of _df -h_ commands consists of 6 columns (Filesystem, Size, Used, Available, Use in % and Mounted on).
- awk '{ print $5 }' : This command splits line into fields. Here it grabs only 5th column i.e. _Use in %_. It will list down the % used by all the filesystem.
- sort -n : This command will sort the list.
- tail -n 1: This command will grab the list line from the list i.e. it will display the highest % space used by a filesystem.
- sed 's/%//' : This command will grab only the number part of highest % space used by a filesystem.
- The variable *space_free* will be assigned a above value i.e. highest space used by filesystem.
- Then Switch case is used to display output based on the values of variable *space_free*.
- It will print "Plenty of disk space available" if value of *space_free* is 1*, 2*, 3*, 4*, 5*.
- It will print "There could be a problem in the near future" if value of *space_free* is 6*, 7*.
- It will print "Maybe we should look at clearing out old files" if value of *space_free* is 8*.
- It will print "We could have a serious problem on our hands soon" if value of *space_free* is 9*.
- It will print "Something is not quite right here" for any other values of *space_free*.
