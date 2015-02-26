public with sharing class ProductOrgchartController {
    //load all product
    @RemoteAction
    public static List<myProduct__c> loadProducts() {
        return [SELECT ID, Name, Parent_Product__r.ID FROM myProduct__c Order By CreatedDate DESC];
    }
}
