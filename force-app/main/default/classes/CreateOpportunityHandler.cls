public with sharing class CreateOpportunityHandler {
    @AuraEnabled
    public static void createVisitActivity(Id opportunityId, Id visitId) {
        Visit_Activity__c visitActivity = new Visit_Activity__c();
        visitActivity.Opportunity__c = opportunityId; // Set the Opportunity Lookup field
        visitActivity.Visit__c = visitId; // Set the Visit Lookup field

        // Insert the Visit_Activity__c record
        insert visitActivity;
    }
}