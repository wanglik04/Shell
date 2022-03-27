touch -t `date +%m%d0000` /tmp/$$
#FILE_PATH=$1
#FILE_TYPE=$2
#OUT_PATH =$3
cd $3
DATE=$(date +%Y_%m_%d-%H%M%S);
mkdir $DATE
for file in $(find $1 -newer /tmp/$$ -iname "*$2"); do
cp $file $DATE
done
rm /tmp/$$
tar -zcvPf $DATE.tar.gz $DATE 
