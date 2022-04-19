trigger hw2 on Child_Obj__c (after insert) {
	update SecondHomeWorkClass.updateParent(Trigger.New);
}