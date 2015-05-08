# apex-volunteermatch
[Volunteermatch API](http://media.volunteermatch.org/docs/APIv2.pdf) Integration for force.com / Salesforce, written in Apex - supports searching the extensive [Volunteermatch](https://www.volunteermatch.org/) database for organizations and volunteer opportunities.

Read all about the VolunteerMatch API at [http://solutions.volunteermatch.org/solutions/integrations](http://solutions.volunteermatch.org/solutions/integrations). 

Usage:

	// Initialize the API class with the Account Name and Secret API Key, test the connection
	// with Hello World
	VolunteerMatch vm = new VolunteerMatch('MyAccountName', 'MySecretAPIKey');
	System.debug(vm.helloWorld('Chris').result);

	// Initialize the API class with the Account Name and Secret API Key stored in Custom
	// Settings, VolunteerMatch_Settings__c
	vm = new VolunteerMatch();
	System.debug(vm.helloWorld('Chris').result);

	// Search all Organizations
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, null, null, null, 20, null, 1, null, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search all Organizations with all return values
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name','ur', 'location', 'description', 'plaintextDescription', 'mission', 'plaintextMission', 'imageUrl', 'created', 'updated', 'numReviews', 'avgRating', 'contact', 'categoryIds', 'vmUrl', 'type', 'ein', 'classification'}, null, null, 'San Francisco, CA', null, null, null, null, 20, null, 1, null, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search Organizations for specific category IDs
	for(VolunteerMatch.Organization o : vm.searchOrganizations(new List<Integer>{30, 38}, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, null, null, null, 20, null, 1, null, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search Organizations for specific descriptions
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, new List<String>{'olympic'}, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, null, null, null, 20, null, 1, null, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search Organizations for specific ids
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, new List<String>{'78154', '695410'}, null, 'San Francisco, CA', null, null, null, null, 20, null, 1, null, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search Organizations for specific keywords
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, new List<String>{'food', 'sport'}, 'San Francisco, CA', null, null, null, null, 20, null, 1, null, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search Organizations for specific words in mission
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', new List<String>{'community', 'fund'}, null, null, null, 20, null, 1, null, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search Organizations for specific words in names
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, new List<String>{'community', 'fund'}, null, null, 20, null, 1, null, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search Organizations for national orgs - doesn't seem to filter
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, null, new List<String>{'heart', 'stroke'}, null, 20, null, 1, null, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search Organizations by EIN
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, null, null, '94-1186169', 20, null, 1, null, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search Organizations by OrganizationTypes - doesn't seem to filter
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, null, null, null, 20, new List<String>{'nonvm', 'specialevent'}, 1, null, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search Organizations by Partners
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, null, null, null, 20, null, 1, new List<Integer>{55, 59}, '', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Search Organizations by Radius
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, null, null, null, 20, null, 1, null, '0.5', '', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Sort Organizations by distance
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, null, null, null, 20, null, 1, null, '', 'distance', '', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Sort Organizations by distance (descending)
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, null, null, null, 20, null, 1, null, '', 'distance', 'desc', null).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

	// Get all US Corps-related Organizations 
	for(VolunteerMatch.Organization o : vm.searchOrganizations(null, null, new List<String>{'id', 'name'}, null, null, 'San Francisco, CA', null, null, null, null, 20, null, 1, null, '', '', '', new List<Integer>{2, 4, 5, 6, 7,
		8}).organizations) {
		System.debug(o.name + ' (' + o.id + ')');
	}

The package includes a custom setting where you can store your Account Name and Secret API Key. This way, you won't have to pass them in when you initialize the API class.

You can install the package into a Salesforce instance using the following URL:
  [https://githubsfdeploy.herokuapp.com/?owner=SalesforceFoundation&repo=apex-volunteermatch
](https://githubsfdeploy.herokuapp.com/?owner=SalesforceFoundation&repo=apex-volunteermatch)

Comments and contributions are welcome!
