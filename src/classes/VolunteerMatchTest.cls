@isTest 
private class VolunteerMatchTest {

	public static final String helloWorldJson = '{\"name\": \"Kemp\", \"result\": \"Hello Kemp!\"}';
	public static final String searchOrganizationsJson = '{\"currentPage\":1,\"organizations\":[{\"avgRating\":0.0,\"categoryIds\":[25,13,7,39,19],\"classification\":\"501(c)(3) - Charitable Organization\",\"contact\":{\"firstName\":\"Alice\",\"lastName\":\"Wong\"},\"created\":\"2002-03-06T00:00:00-0800\",\"description\":\"One Brick is a 501(c)3 non-profit organization that brings volunteers together to support other local non-profits by adopting an innovative twist to the volunteer experience: we create a friendly and social atmosphere around volunteering, and after each volunteer event -- which typically lasts only 3 to 4 hours -- we invite volunteers to gather at a local restaurant or cafe where they can get to know one another in a relaxed social setting. Our \'commitment-free volunteering\' allows volunteers to choose when they volunteer, rather than having to make commitments for a certain number of volunteer hours, or agree to be available every week at a specific time.<\\/p>\",\"ein\":\"77-0593889\",\"id\":26278,\"imageUrl\":\"http%3A%2F%2Fwww.volunteermatch.org%2Fimages%2Fgallery%2FF30B5A34-7F1C-48D7-8402-C091DAFBCCCC_m\",\"location\":{\"city\":\"San Francisco\",\"country\":\"US\",\"geoLocation\":{\"accuracy\":\"premise\",\"latitude\":37.790321350097656,\"longitude\":-122.40421295166016},\"postalCode\":\"94108\",\"region\":\"CA\",\"street1\":\"237 Kearny Street #209\",\"street2\":null,\"street3\":null},\"mission\":\"One Brick provides support to local non-profit and community organizations by creating a unique, social and flexible volunteer environment for those interested in making a concrete difference in the community. This enables people to get involved, have an impact and have fun, without the requirements of individual long-term commitments.<\\/p>\",\"name\":\"One Brick\",\"numReviews\":0,\"plaintextDescription\":\"One Brick is a 501(c)3 non-profit organization that brings volunteers together to support other local non-profits by adopting an innovative twist to the volunteer experience: we create a friendly and social atmosphere around volunteering, and after each volunteer event -- which typically lasts only 3 to 4 hours -- we invite volunteers to gather at a local restaurant or cafe where they can get to know one another in a relaxed social setting. Our \'commitment-free volunteering\' allows volunteers to choose when they volunteer, rather than having to make commitments for a certain number of volunteer hours, or agree to be available every week at a specific time.\",\"plaintextMission\":\"One Brick provides support to local non-profit and community organizations by creating a unique, social and flexible volunteer environment for those interested in making a concrete difference in the community. This enables people to get involved, have an impact and have fun, without the requirements of individual long-term commitments.\",\"type\":\"public\",\"updated\":\"2015-04-25T05:12:33-0700\",\"vmUrl\":\"http%3A%2F%2Fwww.volunteermatch.org%2Fresults%2Forg_detail.jsp%3Forgid%3D26278%26apiAccountName%3DSalesforce\"}],\"resultsSize\":1}\r\n';
	public static final String searchOpportunitiesJson = '{\"currentPage\":1,\"opportunities\":[{\"allowGroupInvitations\":false,\"allowGroupReservation\":false,\"availability\":{\"endDate\":\"2016-05-06\",\"endTime\":\"17:00:00\",\"ongoing\":false,\"singleDayOpportunity\":false,\"startDate\":\"2015-08-24\",\"startTime\":\"09:00:00\"},\"beneficiary\":123,\"categoryIds\":[34,25,17],\"contact\":{\"firstName\":\"Judith\",\"lastName\":\"Zoon\"},\"created\":\"2012-10-30T12:38:54-0700\",\"description\":\"The Dr. Elias and Florence Katz Gallery and gift shop are open to the public from 9 to 4 pm Monday through Friday, and 10-3 pm on Saturdays. Learn the basics of store displays, maintining an online store, and curating artwork. Install artwork, learn about the art and the artists, create displays and process sales. Online tasks require basic photography, photo editing, and writing skills. Training on website interface provided. Works with Director of Art Sales and Exhibitions and Store Manager.<\\/p>\",\"greatFor\":[\"s\"],\"hasWaitList\":false,\"id\":1230894,\"imageUrl\":\"http%3A%2F%2Fwww.volunteermatch.org%2Fimages%2Fgallery%2F1BBF2CE6-F119-C01A-91DE-BAAFD3C4D0BB_m\",\"location\":{\"city\":\"Richmond\",\"country\":\"US\",\"geoLocation\":{\"accuracy\":\"premise\",\"latitude\":37.9392,\"longitude\":-122.348},\"postalCode\":\"94804\",\"region\":\"CA\",\"street1\":\"NIAD Art Center\",\"street2\":\"551 23 Street\",\"street3\":\"Suite 100\"},\"minimumAge\":21,\"numReferred\":10,\"parentOrg\":{\"id\":501513,\"name\":\"NIAD Art Center\"},\"plaintextDescription\":\"The Dr. Elias and Florence Katz Gallery and gift shop are open to the public from 9 to 4 pm Monday through Friday, and 10-3 pm on Saturdays. Learn the basics of store displays, maintining an online store, and curating artwork. Install artwork, learn about the art and the artists, create displays and process sales. Online tasks require basic photography, photo editing, and writing skills. Training on website interface provided. Works with Director of Art Sales and Exhibitions and Store Manager.\",\"plaintextRequirements\":\"Orientation or Training; Background Check; Time Commitment:to be decided; Minimum Age:21;\",\"plaintextSkillsNeeded\":\"Business Analysis; Online Flash/Video Production; Reporting & Dashboards; Marketing & Communications (Mar/Com); Cost Analysis; Event Management;\",\"referralFields\":[{\"choices\":[\"Yes\",\"No\"],\"id\":11127,\"label\":\"Would you feel comfortable being trained to handle and show a non-venomous snake, such as a king snake or gopher snake?\",\"required\":true,\"type\":\"singlechoice\"},{\"choices\":null,\"id\":26293,\"label\":\"Are you at least 16 years old?\",\"required\":null,\"type\":\"singleline\"},{\"choices\":[\"Yes\",\"No\"],\"id\":10608,\"label\":\"Are you at least 18 years old?\",\"required\":null,\"type\":\"singlechoice\"}],\"referrals\":[{\"comments\":\"Hi, I live in Alameda, CA and I am very eager to start volunteer work for Hospice care. I am 36 yrs. old, I am getting my MFA from Academy of Art University and I have bachelor in Architecture and painting, I have good art visual and I make crafts, use mix media for my photographs and I work as art teacher in ICCNC in Oakland and different kindergarten in my country. I am also very good listener and I’m so patient. Please let me know if I am eligible to help specially that I have a lot of free time on my hand. You can see some my work on facebook FarnazT photography. Thanks Farnaz\",\"created\":\"2013-06-05T20:39:35-0700\",\"member\":{\"primaryKey\":\"blahblah@gmail.com\"},\"opportunity\":{\"id\":1230894},\"position\":1,\"referralFields\":[],\"status\":\"unknown\"},{\"comments\":\"I\'m interested in volunteering and was wondering what the steps are?\",\"created\":\"2013-11-08T20:59:08-0800\",\"member\":{\"primaryKey\":\"blahblahblah@gmail.com\"},\"opportunity\":{\"id\":1230894},\"position\":1,\"referralFields\":[],\"status\":\"unknown\"}],\"requirements\":\"Orientation or Training<\\/li>Background Check<\\/li>Time Commitment:to be decided<\\/li>Minimum Age:21<\\/li><\\/ul>\",\"requirementsMap\":{\"orientationRequired\":true,\"minAge\":21,\"timeCommitment\":\"to be decided\",\"backgroundCheckRequired\":true},\"requiresAddress\":false,\"skillsList\":[\"Internet Research\",\"Problem Solving\",\"Basic Computer Skills\",\"Community Outreach\",\"Relationship Building\",\"Data Entry\"],\"skillsNeeded\":\"Public Speaking<\\/strong><\\/li>Transportation<\\/strong><\\/li>Telecommunications<\\/strong><\\/li>Elder care<\\/strong><\\/li>Community Outreach<\\/strong><\\/li>Reading /Writing<\\/strong><\\/li><\\/ul>\",\"spacesAvailable\":15,\"status\":\"active\",\"tags\":\"Sales, art\",\"title\":\"Art Sales assistant\",\"type\":\"public\",\"updated\":\"2015-03-03T00:00:11-0800\",\"virtual\":false,\"vmUrl\":\"http%3A%2F%2Fwww.volunteermatch.org%2Fresults%2Fopp_detail.jsp%3Foppid%3D1230894%26apiAccountName%3DSalesforce\",\"volunteersNeeded\":30}],\"resultsSize\":1,\"sortCriteria\":\"none\"}';

	// Test case for Hello World test
    private static testMethod void testHelloWorld() {
		Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());

		test.startTest();
		VolunteerMatch vm = new VolunteerMatch('somebody@salesforce.com','password');
	 	VolunteerMatch.HelloWorld hw = vm.helloWorld('Kemp');
		system.debug(hw);
		test.stopTest();

		System.assertNotEquals(null, hw.responseJson);
		System.assertEquals('Kemp', hw.name);
		System.assertEquals('Hello Kemp!', hw.result);
    }

    // Test case for searching organziations
    private static testMethod void testSearchOrganizations() {
		Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());

		test.startTest();
		VolunteerMatch vm = new VolunteerMatch('somebody@salesforce.com','password');
	 	VolunteerMatch.OrganizationSearch os = vm.searchOrganizations(new List<Integer>{25}, 
	 		new List<String>{'social'}, new List<String>{'id', 'name', 'ur', 'location', 'description', 
	 		'plaintextDescription', 'mission', 'plaintextMission', 'imageUrl', 'created', 'updated', 
	 		'numReviews', 'avgRating', 'contact', 'categoryIds', 'vmUrl', 'type', 'ein', 'classification'}, 
	 		new List<String>{'26278'}, new List<String>{'social'}, 'San Francisco, CA', new List<String>{'social'}, 
	 		new List<String>{'One Brick'}, new List<String>{'0'}, '77-0593889', 1, new List<String>{'public'}, 1, 
	 		new List<Integer>{0}, '20', 'name', 'asc', new List<Integer>{5});
		system.debug(os);
		test.stopTest();

		System.assertNotEquals(null, os.responseJson);
		System.assertEquals(1, os.currentPage);
		System.assertEquals(1, os.resultsSize);
		System.assertEquals('One Brick', os.organizations[0].name);
		System.assertEquals('77-0593889', os.organizations[0].ein);
		System.assertEquals('San Francisco', os.organizations[0].location.city);
    }

    // Test case for searching opportunities
    private static testMethod void testSearchOpportunities() {
		Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());

		test.startTest();
		List<VolunteerMatch.DateRange> drList = new List<VolunteerMatch.DateRange>();
		VolunteerMatch.DateRange dr = new VolunteerMatch.DateRange();
		dr.startDate = '2015-01-01';
		dr.endDate = '2015-06-01';
		drList.add(dr);

		VolunteerMatch vm = new VolunteerMatch('somebody@salesforce.com','password');
	 	VolunteerMatch.OpportunitySearch os = vm.searchOpportunities(new List<Integer>{25}, drList, 
	 		new List<String>{'photography'}, new List<String>{'allowGroupInvitations', 'allowGroupReservation', 
	 		'availability', 'beneficiary', 'categoryIds', 'contact', 'created', 'currentPage', 'description', 
	 		'greatFor', 'hasWaitList', 'id', 'imageUrl', 'location', 'minimumAge', 'numReferred', 'parentOrg', 
	 		'plaintextDescription', 'plaintextRequirements', 'plaintextSkillsNeeded', 'referralFields', 
	 		'requirements', 'requirementsMap', 'requiresAddress', 'resultsSize', 'skillsList', 'skillsNeeded', 
	 		'spacesAvailable', 'status', 'tags', 'title', 'type', 'updated', 'virtual', 'vmUrl', 'volunteersNeeded'}, 
	 		new List<String>{'s'} , new List<String>{'1230894'}, new List<String>{'art'}, 'San Francisco', 20, 
	 		new List<String>{'public'}, 501513, new List<String>{'NIAD Art Center'}, '94-2837552', 1, 
	 		new List<Integer>{0}, '20', new List<String>{'Internet Research'}, 'name', 'ASC', '2015-01-01', 
	 		new List<Integer>{5});
		system.debug(os);
		test.stopTest();

		System.assertNotEquals(null, os.responseJson);
		System.assertEquals(1, os.currentPage);
		System.assertEquals(1, os.resultsSize);
		System.assertEquals('NIAD Art Center', os.opportunities[0].parentOrg.name);
		System.assertEquals('Zoon', os.opportunities[0].contact.lastName);
		System.assertEquals('Richmond', os.opportunities[0].location.city);
    }

    // Test all error codes
    private static testMethod void testErrorMultipleChoices() {
		Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator(300, null));

		test.startTest();
		VolunteerMatch vm = new VolunteerMatch('somebody@salesforce.com','password');
		VolunteerMatch.VolunteerMatchException vme;
		VolunteerMatch.OrganizationSearch os;
		try {
		 	os = vm.searchOrganizations(new List<Integer>{25}, new List<String>{'social'}, new List<String>{'id', 
		 		'name', 'ur', 'location', 'description', 'plaintextDescription', 'mission', 'plaintextMission', 
		 		'imageUrl', 'created', 'updated', 'numReviews', 'avgRating', 'contact', 'categoryIds', 'vmUrl', 
		 		'type', 'ein', 'classification'}, new List<String>{'26278'}, new List<String>{'social'}, 
		 		'San Francisco, CA', new List<String>{'social'}, new List<String>{'One Brick'}, 
		 		new List<String>{'0'}, '77-0593889', 1, new List<String>{'public'}, 1, new List<Integer>{0}, '20', 
		 		'name', 'asc', new List<Integer>{5});
		 } catch (VolunteerMatch.VolunteerMatchException e) {
		 	vme = e;
		 }
		system.debug(os);
		test.stopTest();

		System.assertEquals(null, os);
		System.assertEquals(300, vme.statusCode);
		System.assertEquals('Rats! VolunteerForce returned status code 300' +
					': Multiple Choices. (for &quot;searchOpportunities&quot;/&quot;searchOrganizations&quot;' +
					'only) an ambiguous search location was provided. In order to complete the request, you\'ll ' +
					'need to select a disambiguated location', vme.getMessage());
	} 

    private static testMethod void testErrorBadRequest() {
		Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator(400, null));

		test.startTest();
		VolunteerMatch vm = new VolunteerMatch('somebody@salesforce.com','password');
		VolunteerMatch.VolunteerMatchException vme;
		VolunteerMatch.OrganizationSearch os;
		try {
		 	os = vm.searchOrganizations(new List<Integer>{25}, new List<String>{'social'}, new List<String>{'id', 
		 		'name', 'ur', 'location', 'description', 'plaintextDescription', 'mission', 'plaintextMission', 
		 		'imageUrl', 'created', 'updated', 'numReviews', 'avgRating', 'contact', 'categoryIds', 'vmUrl', 
		 		'type', 'ein', 'classification'}, new List<String>{'26278'}, new List<String>{'social'}, 
		 		'San Francisco, CA', new List<String>{'social'}, new List<String>{'One Brick'}, 
		 		new List<String>{'0'}, '77-0593889', 1, new List<String>{'public'}, 1, new List<Integer>{0}, '20', 
		 		'name', 'asc', new List<Integer>{5});
		 } catch (VolunteerMatch.VolunteerMatchException e) {
		 	vme = e;
		 }
		system.debug(os);
		test.stopTest();

		System.assertEquals(null, os);
		System.assertEquals(400, vme.statusCode);
		System.assertEquals('Rats! VolunteerForce returned status code 400' +
					': Bad Request. The parameters you provided were invalid.', vme.getMessage());
	} 

    private static testMethod void testErrorUnauthorized() {
		Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator(401, null));

		test.startTest();
		VolunteerMatch vm = new VolunteerMatch('somebody@salesforce.com','password');
		VolunteerMatch.VolunteerMatchException vme;
		VolunteerMatch.OrganizationSearch os;
		try {
		 	os = vm.searchOrganizations(new List<Integer>{25}, new List<String>{'social'}, new List<String>{'id', 
		 		'name', 'ur', 'location', 'description', 'plaintextDescription', 'mission', 'plaintextMission', 
		 		'imageUrl', 'created', 'updated', 'numReviews', 'avgRating', 'contact', 'categoryIds', 'vmUrl', 
		 		'type', 'ein', 'classification'}, new List<String>{'26278'}, new List<String>{'social'}, 
		 		'San Francisco, CA', new List<String>{'social'}, new List<String>{'One Brick'}, 
		 		new List<String>{'0'}, '77-0593889', 1, new List<String>{'public'}, 1, new List<Integer>{0}, '20', 
		 		'name', 'asc', new List<Integer>{5});
		 } catch (VolunteerMatch.VolunteerMatchException e) {
		 	vme = e;
		 }
		system.debug(os);
		test.stopTest();

		System.assertEquals(null, os);
		System.assertEquals(401, vme.statusCode);
		System.assertEquals('Rats! VolunteerForce returned status code 401' +
					': Unauthorized.Your request triggered an authorization error - for example, you may have ' +
					'exceeded your API usage limits.', vme.getMessage());
	} 

    private static testMethod void testErrorForbidden() {
		Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator(403, null));

		test.startTest();
		VolunteerMatch vm = new VolunteerMatch('somebody@salesforce.com','password');
		VolunteerMatch.VolunteerMatchException vme;
		VolunteerMatch.OrganizationSearch os;
		try {
		 	os = vm.searchOrganizations(new List<Integer>{25}, new List<String>{'social'}, new List<String>{'id', 
		 		'name', 'ur', 'location', 'description', 'plaintextDescription', 'mission', 'plaintextMission', 
		 		'imageUrl', 'created', 'updated', 'numReviews', 'avgRating', 'contact', 'categoryIds', 'vmUrl', 
		 		'type', 'ein', 'classification'}, new List<String>{'26278'}, new List<String>{'social'}, 
		 		'San Francisco, CA', new List<String>{'social'}, new List<String>{'One Brick'}, 
		 		new List<String>{'0'}, '77-0593889', 1, new List<String>{'public'}, 1, new List<Integer>{0}, '20', 
		 		'name', 'asc', new List<Integer>{5});
		 } catch (VolunteerMatch.VolunteerMatchException e) {
		 	vme = e;
		 }
		system.debug(os);
		test.stopTest();

		System.assertEquals(null, os);
		System.assertEquals(403, vme.statusCode);
		System.assertEquals('Rats! VolunteerForce returned status code 403' +
					': Forbidden. Your request couldn\'t be authenticated.', vme.getMessage());
	} 

    private static testMethod void testErrorNotFound() {
		Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator(404, null));

		test.startTest();
		VolunteerMatch vm = new VolunteerMatch('somebody@salesforce.com','password');
		VolunteerMatch.VolunteerMatchException vme;
		VolunteerMatch.OrganizationSearch os;
		try {
		 	os = vm.searchOrganizations(new List<Integer>{25}, new List<String>{'social'}, new List<String>{'id', 
		 		'name', 'ur', 'location', 'description', 'plaintextDescription', 'mission', 'plaintextMission', 
		 		'imageUrl', 'created', 'updated', 'numReviews', 'avgRating', 'contact', 'categoryIds', 'vmUrl', 
		 		'type', 'ein', 'classification'}, new List<String>{'26278'}, new List<String>{'social'}, 
		 		'San Francisco, CA', new List<String>{'social'}, new List<String>{'One Brick'}, 
		 		new List<String>{'0'}, '77-0593889', 1, new List<String>{'public'}, 1, new List<Integer>{0}, '20', 
		 		'name', 'asc', new List<Integer>{5});
		 } catch (VolunteerMatch.VolunteerMatchException e) {
		 	vme = e;
		 }
		system.debug(os);
		test.stopTest();

		System.assertEquals(null, os);
		System.assertEquals(404, vme.statusCode);
		System.assertEquals('Rats! VolunteerForce returned status code 404' +
					': Not Found. You requested a resource that\'s expired or couldn\'t be located.', vme.getMessage());
	} 

   private static testMethod void testErrorServerError() {
		Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator(500, null));

		test.startTest();
		VolunteerMatch vm = new VolunteerMatch('somebody@salesforce.com','password');
		VolunteerMatch.VolunteerMatchException vme;
		VolunteerMatch.OrganizationSearch os;
		try {
		 	os = vm.searchOrganizations(new List<Integer>{25}, new List<String>{'social'}, new List<String>{'id', 
		 		'name', 'ur', 'location', 'description', 'plaintextDescription', 'mission', 'plaintextMission', 
		 		'imageUrl', 'created', 'updated', 'numReviews', 'avgRating', 'contact', 'categoryIds', 'vmUrl', 
		 		'type', 'ein', 'classification'}, new List<String>{'26278'}, new List<String>{'social'}, 
		 		'San Francisco, CA', new List<String>{'social'}, new List<String>{'One Brick'}, 
		 		new List<String>{'0'}, '77-0593889', 1, new List<String>{'public'}, 1, new List<Integer>{0}, '20', 
		 		'name', 'asc', new List<Integer>{5});
		 } catch (VolunteerMatch.VolunteerMatchException e) {
		 	vme = e;
		 }
		system.debug(os);
		test.stopTest();

		System.assertEquals(null, os);
		System.assertEquals(500, vme.statusCode);
		System.assertEquals('Rats! VolunteerForce returned status code 500' +
					': Server Error. Your request triggered a server error.', vme.getMessage());
	} 

   private static testMethod void testErrorServiceUnavailable() {
		Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator(503, null));

		test.startTest();
		VolunteerMatch vm = new VolunteerMatch('somebody@salesforce.com','password');
		VolunteerMatch.VolunteerMatchException vme;
		VolunteerMatch.OrganizationSearch os;
		try {
		 	os = vm.searchOrganizations(new List<Integer>{25}, new List<String>{'social'}, new List<String>{'id', 
		 		'name', 'ur', 'location', 'description', 'plaintextDescription', 'mission', 'plaintextMission', 
		 		'imageUrl', 'created', 'updated', 'numReviews', 'avgRating', 'contact', 'categoryIds', 'vmUrl', 
		 		'type', 'ein', 'classification'}, new List<String>{'26278'}, new List<String>{'social'}, 
		 		'San Francisco, CA', new List<String>{'social'}, new List<String>{'One Brick'}, 
		 		new List<String>{'0'}, '77-0593889', 1, new List<String>{'public'}, 1, new List<Integer>{0}, '20', 
		 		'name', 'asc', new List<Integer>{5});
		 } catch (VolunteerMatch.VolunteerMatchException e) {
		 	vme = e;
		 }
		system.debug(os);
		test.stopTest();

		System.assertEquals(null, os);
		System.assertEquals(503, vme.statusCode);
		System.assertEquals('Rats! VolunteerForce returned status code 503' +
					': Service Unavailable. The API is unavailable to handle the request due to a temporary ' +
					'overloading or maintenance of the server.', vme.getMessage());
	} 

	public class MockHttpResponseGenerator implements HttpCalloutMock {
		Integer status;
		String response;
		public MockHttpResponseGenerator() {}
		public MockHttpResponseGenerator(Integer stat, String resp) { status = stat; response = resp; }

		public HTTPResponse respond(HTTPRequest req) {
			String testResponse =
			(response != null) ? response :
			(req.getEndpoint().containsIgnoreCase('helloWorld')) ? helloWorldJson :
			(req.getEndpoint().containsIgnoreCase('searchOrganizations')) ? searchOrganizationsJson :
			(req.getEndpoint().containsIgnoreCase('searchOpportunities')) ? searchOpportunitiesJson :
			null;
			// Create a fake response
			HttpResponse res = new HttpResponse();
			res.setHeader('Content-Type', 'application/json');
			res.setBody(testResponse);
			res.setStatusCode((status == null) ? 200 : status);
			return res;
		}
	}

	/*
	SAMPLE DATA FROM VOLUNTEERMATCH API:

	GET /api/call?action=searchOrganizations&query=
	{
	    "fieldsToDisplay":[
	        "id",
	        "name",
	        "ur",
	        "location",
	        "description",
	        "plaintextDescription",
	        "mission",
	        "plaintextMission",
	        "imageUrl",
	        "created",
	        "updated",
	        "numReviews",
	        "avgRating",
	        "contact",
	        "categoryIds",
	        "vmUrl",
	        "type",
	        "ein",
	        "classification"
	    ],
	    "ids":[
	        "26278"
	    ]
	}

	RESPONSE:
	{
	    "currentPage":1,
	    "organizations":[
	        {
	            "avgRating":0.0,
	            "categoryIds":[
	                25,
	                13,
	                7,
	                39,
	                19
	            ],
	            "classification":"501(c)(3) - Charitable Organization",
	            "contact":{
	                "firstName":"Alice",
	                "lastName":"Wong"
	            },
	            "created":"2002-03-06T00:00:00-0800",
	            "description":"One Brick is a 501(c)3 non-profit organization that brings volunteers together to support other local non-profits by adopting an innovative twist to the volunteer experience: we create a friendly and social atmosphere around volunteering, and after each volunteer event -- which typically lasts only 3 to 4 hours -- we invite volunteers to gather at a local restaurant or cafÃ© where they can get to know one another in a relaxed social setting. Our 'commitment-free volunteering' allows volunteers to choose when they volunteer, rather than having to make commitments for a certain number of volunteer hours, or agree to be available every week at a specific time.<\/p>",
	            "ein":"77-0593889",
	            "id":26278,
	            "imageUrl":"http%3A%2F%2Fwww.volunteermatch.org%2Fimages%2Fgallery%2FF30B5A34-7F1C-48D7-8402-C091DAFBCCCC_m",
	            "location":{
	                "city":"San Francisco",
	                "country":"US",
	                "geoLocation":{
	                    "accuracy":"premise",
	                    "latitude":37.790321350097656,
	                    "longitude":-122.40421295166016
	                },
	                "postalCode":"94108",
	                "region":"CA",
	                "street1":"237 Kearny Street #209",
	                "street2":null,
	                "street3":null
	            },
	            "mission":"One Brick provides support to local non-profit and community organizations by creating a unique, social and flexible volunteer environment for those interested in making a concrete difference in the community. This enables people to get involved, have an impact and have fun, without the requirements of individual long-term commitments.<\/p>",
	            "name":"One Brick",
	            "numReviews":0,
	            "plaintextDescription":"One Brick is a 501(c)3 non-profit organization that brings volunteers together to support other local non-profits by adopting an innovative twist to the volunteer experience: we create a friendly and social atmosphere around volunteering, and after each volunteer event -- which typically lasts only 3 to 4 hours -- we invite volunteers to gather at a local restaurant or cafÃ© where they can get to know one another in a relaxed social setting. Our 'commitment-free volunteering' allows volunteers to choose when they volunteer, rather than having to make commitments for a certain number of volunteer hours, or agree to be available every week at a specific time.",
	            "plaintextMission":"One Brick provides support to local non-profit and community organizations by creating a unique, social and flexible volunteer environment for those interested in making a concrete difference in the community. This enables people to get involved, have an impact and have fun, without the requirements of individual long-term commitments.",
	            "type":"public",
	            "updated":"2015-04-25T05:12:33-0700",
	            "vmUrl":"http%3A%2F%2Fwww.volunteermatch.org%2Fresults%2Forg_detail.jsp%3Forgid%3D26278%26apiAccountName%3DSalesforce"
	        }
	    ],
	    "resultsSize":1
	}


	GET /api/call?action=searchOpportunities&query=
	{
	    "fieldsToDisplay":[
			"allowGroupInvitations", 
			"allowGroupReservation", 
			"availability", 
			"beneficiary", 
			"categoryIds", 
			"contact", 
			"created", 
			"currentPage", 
			"description", 
			"greatFor", 
			"hasWaitList", 
			"id", 
			"imageUrl", 
			"location", 
			"minimumAge", 
			"numReferred", 
			"parentOrg", 
			"plaintextDescription", 
			"plaintextRequirements", 
			"plaintextSkillsNeeded", 
			"referralFields", 
			"requirements", 
			"requirementsMap", 
			"requiresAddress", 
			"resultsSize", 
			"skillsList", 
			"skillsNeeded", 
			"spacesAvailable", 
			"status", 
			"tags", 
			"title", 
			"type", 
			"updated", 
			"virtual", 
			"vmUrl", 
			"volunteersNeeded"
	    ],
	    "ids":[
	        "1230894"
	    ]
	}

	RESPONSE:
	{
    "currentPage":1,
    "opportunities":[
        {
            "allowGroupInvitations":false,
            "allowGroupReservation":false,
            "availability":{
                "endDate":"2016-05-06",
                "endTime":"17:00:00",
                "ongoing":false,
                "singleDayOpportunity":false,
                "startDate":"2015-08-24",
                "startTime":"09:00:00"
            },
            "beneficiary":123,
            "categoryIds":[
                34,
                25,
                17
            ],
            "contact":{
                "firstName":"Judith",
                "lastName":"Zoon"
            },
            "created":"2012-10-30T12:38:54-0700",
            "description":"The Dr. Elias and Florence Katz Gallery and gift shop are open to the public from 9 to 4 pm Monday through Friday, and 10-3 pm on Saturdays. Learn the basics of store displays, maintining an online store, and curating artwork. Install artwork, learn about the art and the artists, create displays and process sales. Online tasks require basic photography, photo editing, and writing skills. Training on website interface provided. Works with Director of Art Sales and Exhibitions and Store Manager.<\/p>",
            "greatFor":[
                "s"
            ],
            "hasWaitList":false,
            "id":1230894,
            "imageUrl":"http%3A%2F%2Fwww.volunteermatch.org%2Fimages%2Fgallery%2F1BBF2CE6-F119-C01A-91DE-BAAFD3C4D0BB_m",
            "location":{
                "city":"Richmond",
                "country":"US",
                "geoLocation":{
                    "accuracy":"premise",
                    "latitude":37.93920135498047,
                    "longitude":-122.3479995727539
                },
                "postalCode":"94804",
                "region":"CA",
                "street1":"NIAD Art Center",
                "street2":"551 23 Street",
                "street3":"Suite 100"
            },
            "minimumAge":21,
            "numReferred":10,
            "parentOrg":{
                "id":501513,
                "name":"NIAD Art Center"
            },
            "plaintextDescription":"The Dr. Elias and Florence Katz Gallery and gift shop are open to the public from 9 to 4 pm Monday through Friday, and 10-3 pm on Saturdays. Learn the basics of store displays, maintining an online store, and curating artwork. Install artwork, learn about the art and the artists, create displays and process sales. Online tasks require basic photography, photo editing, and writing skills. Training on website interface provided. Works with Director of Art Sales and Exhibitions and Store Manager.",
            "plaintextRequirements":"Orientation or Training; Background Check; Time Commitment:to be decided; Minimum Age:21;",
            "plaintextSkillsNeeded":"Business Analysis; Online Flash\/Video Production; Reporting & Dashboards; Marketing & Communications (Mar\/Com); Cost Analysis; Event Management;",
            "referralFields":[
                {
                    "choices":[
                        "Yes",
                        "No"
                    ],
                    "id":11127,
                    "label":"Would you feel comfortable being trained to handle and show a non-venomous snake, such as a king snake or gopher snake?",
                    "required":true,
                    "type":"singlechoice"
                },
                {
                    "choices":null,
                    "id":26293,
                    "label":"Are you at least 16 years old?",
                    "required":null,
                    "type":"singleline"
                },
                {
                    "choices":[
                        "Yes",
                        "No"
                    ],
                    "id":10608,
                    "label":"Are you at least 18 years old?",
                    "required":null,
                    "type":"singlechoice"
                }
            ],
            "referrals":[
                {
                    "comments":"Hi, I live in Alameda, CA and I am very eager to start volunteer work for Hospice care. I am 36 yrs. old, I am getting my MFA from Academy of Art University and I have bachelor in Architecture and painting, I have good art visual and I make crafts, use mix media for my photographs and I work as art teacher in ICCNC in Oakland and different kindergarten in my country. I am also very good listener and I’m so patient. Please let me know if I am eligible to help specially that I have a lot of free time on my hand. You can see some my work on facebook FarnazT photography. Thanks Farnaz",
                    "created":"2013-06-05T20:39:35-0700",
                    "member":{
                        "primaryKey":"blahblah@gmail.com"
                    },
                    "opportunity":{
                        "id":1230894
                    },
                    "position":1,
                    "referralFields":[

                    ],
                    "status":"unknown"
                },
                {
                    "comments":"I'm interested in volunteering and was wondering what the steps are?",
                    "created":"2013-11-08T20:59:08-0800",
                    "member":{
                        "primaryKey":"blahblahblah@gmail.com"
                    },
                    "opportunity":{
                        "id":1230894
                    },
                    "position":1,
                    "referralFields":[

                    ],
                    "status":"unknown"
                }
            ],
            "requirements":"Orientation or Training<\/li>Background Check<\/li>Time Commitment:to be decided<\/li>Minimum Age:21<\/li><\/ul>",
            "requirementsMap":{
                "orientationRequired":true,
                "minAge":21,
                "timeCommitment":"to be decided",
                "backgroundCheckRequired":true
            },
            "requiresAddress":false,
            "skillsList":[
                "Internet Research",
                "Problem Solving",
                "Basic Computer Skills",
                "Community Outreach",
                "Relationship Building",
                "Data Entry"
            ],
            "skillsNeeded":"Public Speaking<\/strong><\/li>Transportation<\/strong><\/li>Telecommunications<\/strong><\/li>Elder care<\/strong><\/li>Community Outreach<\/strong><\/li>Reading \/Writing<\/strong><\/li><\/ul>",
            "spacesAvailable":15,
            "status":"active",
            "tags":"Sales, art",
            "title":"Art Sales assistant",
            "type":"public",
            "updated":"2015-03-03T00:00:11-0800",
            "virtual":false,
            "vmUrl":"http%3A%2F%2Fwww.volunteermatch.org%2Fresults%2Fopp_detail.jsp%3Foppid%3D1230894%26apiAccountName%3DSalesforce",
            "volunteersNeeded":30
        }],
    "resultsSize":1,
    "sortCriteria":"none"
	}

*/

}