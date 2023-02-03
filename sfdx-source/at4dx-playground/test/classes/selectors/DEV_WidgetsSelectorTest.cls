@IsTest
private class DEV_WidgetsSelectorTest
{
	@IsTest
	static void getSObjectType_COVER()
	{
		DEV_WidgetsSelector sel = new DEV_WidgetsSelector();
		Assert.areEqual(DEV_Widget__c.SObjectType, sel.getSObjectType());
	}

	@IsTest
	static void selectMethods_COVER()
	{
		DEV_WidgetsSelector sel = new DEV_WidgetsSelector();
		sel.selectById(new Set<Id>());
	}

	@IsTest
	static void newInstance_COVER()
	{
		DEV_IWidgetsSelector sel = new DEV_WidgetsSelector();
		Application.Selector.setMock(sel);
		sel = DEV_WidgetsSelector.newInstance();
	}
}