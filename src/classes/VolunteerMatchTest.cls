@isTest 
private class VolunteerMatchTest {

	public static final String searchOrganizationsJson = '{\"currentPage\":1,\"organizations\":[{\"avgRating\":0.0,\"categoryIds\":[25,13,7,39,19],\"classification\":\"501(c)(3) - Charitable Organization\",\"contact\":{\"firstName\":\"Alice\",\"lastName\":\"Wong\"},\"created\":\"2002-03-06T00:00:00-0800\",\"description\":\"One Brick is a 501(c)3 non-profit organization that brings volunteers together to support other local non-profits by adopting an innovative twist to the volunteer experience: we create a friendly and social atmosphere around volunteering, and after each volunteer event -- which typically lasts only 3 to 4 hours -- we invite volunteers to gather at a local restaurant or cafe where they can get to know one another in a relaxed social setting. Our \'commitment-free volunteering\' allows volunteers to choose when they volunteer, rather than having to make commitments for a certain number of volunteer hours, or agree to be available every week at a specific time.<\\/p>\",\"ein\":\"77-0593889\",\"id\":26278,\"imageUrl\":\"http%3A%2F%2Fwww.volunteermatch.org%2Fimages%2Fgallery%2FF30B5A34-7F1C-48D7-8402-C091DAFBCCCC_m\",\"location\":{\"city\":\"San Francisco\",\"country\":\"US\",\"geoLocation\":{\"accuracy\":\"premise\",\"latitude\":37.790321350097656,\"longitude\":-122.40421295166016},\"postalCode\":\"94108\",\"region\":\"CA\",\"street1\":\"237 Kearny Street #209\",\"street2\":null,\"street3\":null},\"mission\":\"One Brick provides support to local non-profit and community organizations by creating a unique, social and flexible volunteer environment for those interested in making a concrete difference in the community. This enables people to get involved, have an impact and have fun, without the requirements of individual long-term commitments.<\\/p>\",\"name\":\"One Brick\",\"numReviews\":0,\"plaintextDescription\":\"One Brick is a 501(c)3 non-profit organization that brings volunteers together to support other local non-profits by adopting an innovative twist to the volunteer experience: we create a friendly and social atmosphere around volunteering, and after each volunteer event -- which typically lasts only 3 to 4 hours -- we invite volunteers to gather at a local restaurant or cafe where they can get to know one another in a relaxed social setting. Our \'commitment-free volunteering\' allows volunteers to choose when they volunteer, rather than having to make commitments for a certain number of volunteer hours, or agree to be available every week at a specific time.\",\"plaintextMission\":\"One Brick provides support to local non-profit and community organizations by creating a unique, social and flexible volunteer environment for those interested in making a concrete difference in the community. This enables people to get involved, have an impact and have fun, without the requirements of individual long-term commitments.\",\"type\":\"public\",\"updated\":\"2015-04-25T05:12:33-0700\",\"vmUrl\":\"http%3A%2F%2Fwww.volunteermatch.org%2Fresults%2Forg_detail.jsp%3Forgid%3D26278%26apiAccountName%3DSalesforce\"}],\"resultsSize\":1}\r\n';
	public static final String helloWorldJson = '{\"name\": \"Kemp\", \"result\": \"Hello Kemp!\"}';

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
*/

}