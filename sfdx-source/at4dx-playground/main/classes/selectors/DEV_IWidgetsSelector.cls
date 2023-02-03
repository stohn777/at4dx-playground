public interface DEV_IWidgetsSelector
	extends IApplicationSObjectSelector
{
	List<DEV_Widget__c> selectById(Set<Id> idSet);
	List<DEV_Widget__c> selectByMixedArguments(Set<String> guidSetA, Set<String> guidSetB, Set<DEV_WidgetEnums.StateEnum> enumSet);
}