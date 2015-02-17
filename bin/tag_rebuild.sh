##!/bin/sh -x
#!/bin/sh

MAINDIR=`echo $BUILDROOT|cut -d ":" -f 1`
rm -rf $MAINDIR/.tag
mkdir $MAINDIR/.tag
cd $MAINDIR/.tag

echo "Starting to build tags..."
echo "Ctags ... " $BUILDROOT
BUILD_DIR=`echo $BUILDROOT|sed -e 's/:/ /g'`
ctags -R --fields=+lS $BUILD_DIR

echo "Cscope ... " $BUILDROOT
for dir in ${BUILD_DIR}
do
  find $dir -name '*.[chxsS]' -type f >> cscope.files
done
cscope -bqk
cd -
export MAINDIR=$MAINDIR
