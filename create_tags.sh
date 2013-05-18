tagname=$1
git tag -a $1 -m "Created by $(hostname) build for $1"
git push origin $1
for  feed in packages luci fastd config_mode
do
	cd feeds/$feed 
	git tag -a $1 -m "Created by $(hostname) build for $1" 
	git push origin $1
	cd ../..
done
