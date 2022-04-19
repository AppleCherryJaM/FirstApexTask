public class SecondHomeWorkClass {
    
    public static List<Parent_Obj__c> updateParent (List<Child_Obj__c> children) {
        List<Parent_Obj__c> parentListForUpdate = new List<Parent_Obj__c>();
        
        for (Child_Obj__c child : children) {
            List<Parent_Obj__c> someParentList = [SELECT Id FROM Parent_Obj__c WHERE Id = :child.Parent__c];
            Parent_Obj__c p = someParentList[0];
            p.time_of_change__c = child.LastModifiedDate;
            parentListForUpdate.add(p);
        }
        return parentListForUpdate;
    }
}