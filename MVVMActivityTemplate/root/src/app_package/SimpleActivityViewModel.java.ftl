package ${packageName};

public class ${activityClass}ViewModel extends BaseViewModel {

<#if generateInterfaceNavigator>
${activityClass}Navigator navigator;
public ${activityClass}ViewModel(${activityClass}Navigator navigator){
	this.navigator = navigator;
}
</#if>
}
