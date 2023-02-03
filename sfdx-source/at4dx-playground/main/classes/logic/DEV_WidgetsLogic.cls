public inherited sharing class DEV_WidgetsLogic
	implements DEV_IWidgetsLogic
{
	public static DEV_IWidgetsLogic newInstance()
	{
		return (DEV_IWidgetsLogic) Application.Service.newInstance(DEV_IWidgetsLogic.class);
	}

	public void doSomethingWithMixedArguments
	(
		Set<String> parentIdSet,
		Set<String> childIdSetA,
		Set<String> childIdSetB,
		Set<DEV_WidgetEnums.StateEnum> enumSetA,
		Set<DEV_WidgetEnums.StateEnum> enumSetB
	)
	{
		DEV_WidgetsSelector.newInstance().selectByMixedArguments(parentIdSet, childIdSetA, enumSetA);
		DEV_WidgetsSelector.newInstance().selectByMixedArguments(parentIdSet, childIdSetB, enumSetB);
	}
}