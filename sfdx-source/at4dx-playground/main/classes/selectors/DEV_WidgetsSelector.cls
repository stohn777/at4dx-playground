public inherited sharing class DEV_WidgetsSelector
	extends ApplicationSObjectSelector
	implements DEV_IWidgetsSelector
{
	public static DEV_IWidgetsSelector newInstance()
	{
		return (DEV_IWidgetsSelector) Application.Selector.newInstance(DEV_Widget__c.SObjectType);
	}

	public SObjectType getSObjectType()
	{
		return DEV_Widget__c.SObjectType;
	}

	public override List<Schema.SObjectField> getSObjectFieldList()
	{
		return new List<Schema.SObjectField> {
			DEV_Widget__c.Id,
			DEV_Widget__c.Name,
			DEV_Widget__c.DEV_Cost__c,
			DEV_Widget__c.DEV_Description__c,
			DEV_Widget__c.DEV_FacetCount__c,
			DEV_Widget__c.DEV_IsScrap__c,
			DEV_Widget__c.DEV_ManufacturedDate__c,
			DEV_Widget__c.DEV_SerialGuid__c,
			DEV_Widget__c.DEV_SoldTo__c,
			DEV_Widget__c.DEV_Status__c
		};
	}

	private List<Schema.SObjectField> getAdditionalSObjectFieldList()
	{
		return new List<Schema.SObjectField>
		{
			// Add desired fields; typically lookups to other SObjects
		};
	}

	public List<DEV_Widget__c> selectById(Set<Id> idSet)
	{
		return (List<DEV_Widget__c>) selectSObjectsById( idSet == null ? new Set<Id>() : idSet );
	}

	public List<DEV_Widget__c> selectByMixedArguments(Set<String> guidSetA, Set<String> guidSetB, Set<DEV_WidgetEnums.StateEnum> enumSet)
	{
		return null;
	}
}