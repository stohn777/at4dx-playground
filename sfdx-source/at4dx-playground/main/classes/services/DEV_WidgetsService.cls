public inherited sharing class DEV_WidgetsService
{
	private static DEV_IWidgetsService service()
	{
		return (DEV_IWidgetsService) Application.Service.newInstance(DEV_IWidgetsService.class);
	}

	public static void doSomethingWithWidgets()
	{
		service().doSomethingWithWidgets();
	}
}