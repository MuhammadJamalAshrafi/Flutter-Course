void main() {
  List<Map<String, Map<int, List<Map<String, String>>>>> PlayStoreAppDetails = [
    {
      "Installed Apps": {
        1: [
          {"Name": "Facebook"},
          {"Version": "348.0.0.39.118"},
          {"Downloads": "5B+"},
          {"Reviews": "124M"},
          {"Ratings": "4.1"},
          {"Offered by": "Meta Platform, Inc."},
          {"Updated On": "Dec 14,2021"},
        ],
        2: [
          {"Name": "Easypaisa - Payments Made Easy"},
          {"Version": "2.8.6"},
          {"Downloads": "10M+"},
          {"Reviews": "519K"},
          {"Ratings": "4.2"},
          {"Offered by": "Easypaisa"},
          {"Updated On": "Jan 3,2022"},
        ]
      }
    }
  ];

  print(PlayStoreAppDetails);
}
