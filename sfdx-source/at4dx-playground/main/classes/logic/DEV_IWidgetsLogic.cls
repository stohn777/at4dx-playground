public interface DEV_IWidgetsLogic
{
	void doSomethingWithMixedArguments(
		Set<String> parentIdSet,
		Set<String> childIdSetA,
		Set<String> childIdSetB,
		Set<DEV_WidgetEnums.StateEnum> enumSetA,
		Set<DEV_WidgetEnums.StateEnum> enumSetB
	);
}