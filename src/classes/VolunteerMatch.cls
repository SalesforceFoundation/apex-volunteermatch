/**
** Apex class that implements the VolunteerMatch Commercial API v2 - http://media.volunteermatch.org/docs/APIv2.pdf
**
** Copyright (c) 2015 Salesforce.com Foundation
**/

global virtual with sharing class VolunteerMatch {
	protected VolunteerMatch_Settings__c settings = VolunteerMatch_Settings__c.getInstance();
	protected final String BASE_ENDPOINT = 'https://api.volunteermatch.org/api/call';
	protected final String CHARSET = 'UTF-8';
	protected final String DATETIME_FORMAT = 'yyyy-MM-dd\'T\'HH:mm:ssZ';
	public String username;
	public String apiKey;

	/**
	** Constructors - you can provide the auth credentials or look them up from custom settings
	**/
	public VolunteerMatch(String username, String apiKey) {
		this.username = username;
		this.apiKey = apiKey;
	}

	public VolunteerMatch() {
		username = settings.Username__c;
		apiKey = settings.API_Key__c;
	}

	global class VolunteerMatchException extends Exception {
		public Integer statusCode { get; set; }
	}

	/**
	** Custom data types for response data
	**/
	global class HelloWorld {
		public String name;
		public String result;
		public String responseJson;
	}

	public class OrganizationSearch {
		public Integer currentPage;
		public List<Organization> organizations;
		public Integer resultsSize;
		public String responseJson;
	}

	public class Organization {
		public Double avgRating;
		public List<Integer> categoryIds;
		public String classification;
		public Contact contact;
		public String created;
		public String description;
		public String ein;
		public Integer id;
		public String imageUrl;
		public Location location;
		public String mission;
		public String name;
		public Integer numReviews;
		public String plaintextDescription;
		public String plaintextMission;
		public String type;
		public String updated;
		public String vmUrl;
	}

	public class Contact {
		public String firstName;
		public String lastName;
	}

	public class Location {
		public String city;
		public String country;
		public GeoLocation geoLocation;
		public String postalCode;
		public String region;
		public String street1;
		public String street2;
		public String street3;
	}

	public class GeoLocation {
		public String accuracy;
		public Double latitude;
		public Double longitude;
	}

	/**
	** This method is used to test the connectivity of a client application with the API service. It will return the
	** result "Hello [name]!".
	**
	** name is any string
	**/
	public HelloWorld helloWorld(String name) {
		HelloWorld hw = new HelloWorld();

		JSONGenerator gen = JSON.createGenerator(true);
		gen.writeStartObject();
		gen.writeStringField('name', name);
		gen.writeEndObject();
		String jsonString = gen.getAsString();

		String returnJSON = callVolunteerMatch('helloWorld', jsonString);

		if (returnJSON != null) {
			hw = ((HelloWorld)(JSON.deserialize(returnJSON, HelloWorld.class)));
			hw.responseJson = JSON.serializePretty(hw);
		}
		return hw;
	}

/*
	public void getMetadata(Integer version) {
		JSONGenerator gen = JSON.createGenerator(true);
		gen.writeStartObject();
		gen.writeStringField('version', String.valueOf(version));
		gen.writeEndObject();
		String jsonString = gen.getAsString();

		String returnJSON = callVolunteerMatch('getMetadata', jsonString);
		System.debug(returnJSON);

	}
*/

	/**
	** Search for matching organizations. By default, all active organizations available to the given key will be 
	** searched. Note that many of these may not work.
	**
	** categoryIds limits results to organizations in particular categories
	** descriptions limit results to organizations with matching descriptions
	** fieldsToDisplay list of fields to display in the response. Valid fields are id, name, url, location, 
	**                 description, plaintextDescription, mission, plaintextMission, imageUrl, created, updated, 
	**                 numReviews, avgRating, contact, categoryIds, vmUrl, type, ein, classification
	** ids limit results to organizations with the matching identifiers
	** keywords limit results to organizations with matching keywords; keyword searches org name, description, mission, 
	**          and categories
	** location search for organizations in a specific area
	** mission limit results to organizations with matching mission
	** names limit results to organizations with matching names
	** nationalOrgs limit results to organizations for orgs with matching names
	** ein limit results to organizations with a matching EIN/Tax ID. EIN's are 9-digit numerical codes issued by the 
	**     IRS. An example of the EIN format is "01-2345678"
	** numberOfResults the number of results to return; defaults to 20. This maybe limited by your key, see 
	**                 getKeyStatus for more information
	** organizationTypes limit results to organizations of the particular type. Only usable by affinities that don't 
	**                   operate on the public domain
	** pageNumber the page number of results to return; will always be normalized to return at least some results if 
	**            any are available
	** partners limit results to organizations sponsored by particular partners (partner IDs, see getMetaData)
	** radius specifies the radius of the search (in km or political boundaries). Default is 20 miles. String 
	**        representing a floating number or one of city, subregion (county), msa, or region (state)
	** sortCriteria sorting criteria
	** sortOrder the sort order, asc or desc
	** usCorps limit results to organizations for the particular corps
	**/
	public OrganizationSearch searchOrganizations(List<Integer> categoryIds, List<String> descriptions, 
		List<String> fieldsToDisplay, List<String> ids, List<String> keywords, String location, 
		List<String> mission, List<String> names, List<String> nationalOrgs, String ein, Integer numberOfResults, 
		List<String> organizationTypes, Integer pageNumber, List<Integer> partners, String radius, 
		String sortCriteria, String sortOrder, List<Integer> usCorps) {

		OrganizationSearch os = new OrganizationSearch();

		JSONGenerator gen = JSON.createGenerator(true);
		gen.writeStartObject();

		if (categoryIds != null) {
			gen.writeObjectField('categoryIds', categoryIds);
		}

		if (fieldsToDisplay != null) {
			gen.writeObjectField('fieldsToDisplay', fieldsToDisplay);
		}

		if (descriptions != null) {
			gen.writeObjectField('descriptions', descriptions);
		}

		if (ids != null) {
			gen.writeObjectField('ids', ids);
		}

		if (keywords != null) {
			gen.writeObjectField('keywords', keywords);
		}

		if (!String.isBlank(location)) {
			gen.writeStringField('location', location);
		}

		if (mission != null) {
			gen.writeObjectField('mission', mission);
		}

		if (names != null) {
			gen.writeObjectField('names', names);
		}

		// Note: This does not seem to do anything
		if (nationalOrgs != null) {
			gen.writeObjectField('nationalOrgs', nationalOrgs);
		}

		if (!String.isBlank(ein)) {
			gen.writeStringField('ein', ein);
		}

		if (numberOfResults != null) {
			gen.writeNumberField('numberOfResults', numberOfResults);
		}

		// Note: This does not seem to do anything
		if (organizationTypes != null) {
			gen.writeObjectField('organizationTypes', organizationTypes);
		}

		if (pageNumber != null) {
			gen.writeNumberField('pageNumber', pageNumber);
		}

		if (partners != null) {
			gen.writeObjectField('partners', partners);
		}

		if (!String.isBlank(radius)) {
			gen.writeStringField('radius', radius);
		}

		if (!String.isBlank(sortCriteria)) {
			gen.writeStringField('sortCriteria', sortCriteria);
		}

		if (!String.isBlank(sortOrder)) {
			gen.writeStringField('sortOrder', sortOrder);
		}

		if (usCorps != null) {
			gen.writeObjectField('usCorps', usCorps);
		}

		gen.writeEndObject();
		String jsonString = gen.getAsString();

		String returnJSON = callVolunteerMatch('searchOrganizations', jsonString);

		if (returnJSON != null) {
			os = ((OrganizationSearch)(JSON.deserialize(returnJSON, OrganizationSearch.class)));
			os.responseJson = JSON.serializePretty(os);
		}
		return os;

	}


	/**
	** Shared methods
	**/
	protected String callVolunteerMatch(String action, String query) {

 		String wsseHeader = '';

		// Generate cryptographically secure nonce (random string)
		String nonce = String.valueOf(Crypto.getRandomLong());
		
		// Get current date/time in the format VolunteerMatch is expecting
		Datetime yourDate = Datetime.now();
		String createdDateTimeString = yourDate.format(DATETIME_FORMAT);

		// Generate the password digest in the format: PasswordDigest = Base64 ( SHA256 ( nonce + timestamp + api key) )
		Blob targetBlob = Blob.valueOf(nonce + createdDateTimeString + apiKey);
		String passwordDigest = EncodingUtil.base64Encode(Crypto.generateDigest('SHA256', targetBlob));

		HttpRequest http = new HttpRequest();
		http.setEndpoint(BASE_ENDPOINT + '?action=' + EncodingUtil.urlEncode(action, CHARSET) + '&query=' + 
			EncodingUtil.urlEncode(query, CHARSET));
		system.debug(LoggingLevel.WARN, 'volunteermatch query >>>> \n' + query + '\n');
		http.setMethod('GET');
		http.setHeader('Accept-Charset', CHARSET);
		http.setHeader('Content-Type', 'application/json');
		http.setHeader('Authorization', 'WSSE profile="UsernameToken"');
		http.setHeader('X-WSSE', 'UsernameToken Username="' + username + '", PasswordDigest="' + passwordDigest + 
			'", Nonce="' + nonce + '", Created="' + createdDateTimeString + '"');

		String response;
		Integer statusCode;
		Http con = new Http();
		HttpResponse hs = new HttpResponse();
		//system.debug(LoggingLevel.WARN, 'volunteermatch request >>>> \n' + String.valueOf(http) + '\n');
		hs = con.send(http);

		if (hs.getStatusCode() == 200) {
			//system.debug(LoggingLevel.WARN, 'volunteermatch response >>>> \n'+ hs.getBody() + '\n');
			return hs.getBody();
		} else {
			Integer status = hs.getStatusCode();
			String err = 'Rats! VolunteerForce returned status code ' + String.valueOf(status);

			if (status == 300) {
				err += ': Multiple Choices. (for &quot;searchOpportunities&quot;/&quot;searchOrganizations&quot;' +
					'only) an ambiguous search location was provided. In order to complete the request, you\'ll ' +
					'need to select a disambiguated location';
			} else if (status == 400) {
				err += ': Bad Request. The parameters you provided were invalid.';
			} else if (status == 401) {
				err += ': Unauthorized.Your request triggered an authorization error - for example, you may have ' +
					'exceeded your API usage limits.';
			} else if (status == 403) {
				err += ': Forbidden. Your request couldn\'t be authenticated.';
			} else if (status == 404) {
				err += ': Not Found. You requested a resource that\'s expired or couldn\'t be located.';
			} else if (status == 500) {
				err += ': Server Error. Your request triggered a server error.';
			} else if (status == 503) {
				err += ': Service Unavailable. The API is unavailable to handle the request due to a temporary ' +
					'overloading or maintenance of the server.';
			} else {
				err += '.';
			}

			VolunteerMatchException vme = new VolunteerMatchException(err);
			vme.statusCode = status;
			throw vme;
		}
	}
}