set -x 
while read line
do
        name=`echo $line | cut -d '#' -f1`
        plugin_name=$(echo $name | tr -d ' ')
        version=`echo $line | cut -d '#' -f2`
        plugin_version=$(echo $version | tr -d ' ')
        wget https://updates.jenkins-ci.org/download/plugins/$plugin_name/$plugin_version/$plugin_name.hpi --no-check-certificate
		#wget https://updates.jenkins-ci.org/latest/${plugin_name}.hpi
done < /var/lib/jenkins/plugin_list
