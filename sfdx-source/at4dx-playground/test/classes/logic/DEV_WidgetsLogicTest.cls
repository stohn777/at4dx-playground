@IsTest
private class DEV_WidgetsLogicTest
{
	@IsTest
	static void testBehavior_HappyPath()
	{
		fflib_ApexMocks mocks = new fflib_ApexMocks();

		Set<String> parentIdSet = new Set<String> { 'jklsdjflksjlk' };
		Set<String> childIdSetA = new Set<String> { 'toiuoiuoitquw' };
		Set<String> childIdSetB = new Set<String> { 'xbnvmzxcnvnxx' };
		Set<DEV_WidgetEnums.StateEnum> enumSetA = new Set<DEV_WidgetEnums.StateEnum> { DEV_WidgetEnums.StateEnum.ONE };
		Set<DEV_WidgetEnums.StateEnum> enumSetB = new Set<DEV_WidgetEnums.StateEnum> { DEV_WidgetEnums.StateEnum.TWO };

		DEV_IWidgetsSelector mockWidgetsSelector = (DEV_IWidgetsSelector) mocks.mock(DEV_IWidgetsSelector.class);
		mocks.startStubbing();
		mocks.when(mockWidgetsSelector.sObjectType()).thenReturn(DEV_Widget__c.SObjectType);
		mocks.when(mockWidgetsSelector.selectByMixedArguments(parentIdSet, childIdSetA, enumSetA)).thenReturn(null);
		mocks.when(mockWidgetsSelector.selectByMixedArguments(parentIdSet, childIdSetB, enumSetB)).thenReturn(null);
		mocks.stopStubbing();
		Application.Selector.setMock(mockWidgetsSelector);

		DEV_WidgetsLogic.newInstance().doSomethingWithMixedArguments(parentIdSet, childIdSetA, childIdSetB, enumSetA, enumSetB);

		((DEV_IWidgetsSelector) mocks.verify(mockWidgetsSelector, 1)).selectByMixedArguments(parentIdSet, childIdSetA, enumSetA);
		((DEV_IWidgetsSelector) mocks.verify(mockWidgetsSelector, 1)).selectByMixedArguments(parentIdSet, childIdSetB, enumSetB);
	}

	@IsTest
	static void testBehavior_RockyPath()
	{
		fflib_ApexMocks mocks = new fflib_ApexMocks();

		Set<String> parentIdSet = new Set<String> { 'jklsdjflksjlk' };
		Set<String> childIdSetA = new Set<String> { 'toiuoiuoitquw' };
		Set<String> childIdSetB = new Set<String> { 'xbnvmzxcnvnxx' };
		Set<DEV_WidgetEnums.StateEnum> enumSetA = new Set<DEV_WidgetEnums.StateEnum> { DEV_WidgetEnums.StateEnum.ONE };
		Set<DEV_WidgetEnums.StateEnum> enumSetB = new Set<DEV_WidgetEnums.StateEnum> { DEV_WidgetEnums.StateEnum.TWO };

		DEV_IWidgetsSelector mockWidgetsSelector = (DEV_IWidgetsSelector) mocks.mock(DEV_IWidgetsSelector.class);
		mocks.startStubbing();
		mocks.when(mockWidgetsSelector.sObjectType()).thenReturn(DEV_Widget__c.SObjectType);
		mocks.when(mockWidgetsSelector.selectByMixedArguments(parentIdSet, childIdSetA, enumSetA)).thenReturn(null);
		mocks.when(mockWidgetsSelector.selectByMixedArguments(parentIdSet, childIdSetB, enumSetB)).thenReturn(null);
		mocks.stopStubbing();
		Application.Selector.setMock(mockWidgetsSelector);

		DEV_WidgetsLogic.newInstance().doSomethingWithMixedArguments(parentIdSet, childIdSetA, childIdSetB, enumSetA, new Set<DEV_WidgetEnums.StateEnum> {DEV_WidgetEnums.StateEnum.THREE});

		((DEV_IWidgetsSelector) mocks.verify(mockWidgetsSelector, 1)).selectByMixedArguments(parentIdSet, childIdSetA, enumSetA);

		try
		{
			((DEV_IWidgetsSelector) mocks.verify(mockWidgetsSelector, 1)).selectByMixedArguments(parentIdSet, childIdSetB, enumSetB);
			Assert.fail('The test callout should have failed.');
		}
		catch (fflib_ApexMocks.ApexMocksException exc)
		{
			// Execption is expected.
			/*
				fflib_ApexMocks.ApexMocksException: EXPECTED COUNT: 1
				ACTUAL COUNT: 0
				METHOD: DEV_IWidgetsSelector__sfdc_ApexStub.selectByMixedArguments(Set<String>, Set<String>, Set<DEV_WidgetEnums.StateEnum>)
				---
				ACTUAL ARGS: (["jklsdjflksjlk"], ["toiuoiuoitquw"], ["ONE"]), (["jklsdjflksjlk"], ["xbnvmzxcnvnxx"], ["THREE"])
				---
				EXPECTED ARGS: ["jklsdjflksjlk"], ["xbnvmzxcnvnxx"], ["TWO"]
				Class.fflib_MethodVerifier: line 107, column 1
				Class.fflib_AnyOrder.verify: line 48, column 1
				Class.fflib_MethodVerifier.verifyMethodCall: line 20, column 1
				Class.fflib_ApexMocks.verifyMethodCall: line 132, column 1
				Class.fflib_ApexMocks: line 256, column 1
				Class.fflib_ApexMocks: line 83, column 1
				Class.DEV_IWidgetsSelector__sfdc_ApexStub.selectByMixedArguments_rList$$lDEV_Widget__c$$r_0Set$$lString$$r_1Set$$lString$$r_2Set$$lDEV_WidgetEnums$$dStateEnum$$r: line 19, column 1
				Class.DEV_WidgetsLogicTest.testBehavior: line 27, column 1
			 */
		}
	}
}