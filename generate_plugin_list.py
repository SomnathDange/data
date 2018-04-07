import json

with open('data.json') as json_data:
    d = json.load(json_data)

for plugin in d['plugins']:
	plugin_name=plugin['shortName'];
	plugin_version=plugin['version'];
	plugin_url=plugin['url'];
	print plugin_name,"#",plugin_version,"#",plugin_url;
