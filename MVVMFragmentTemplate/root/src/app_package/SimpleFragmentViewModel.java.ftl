package ${packageName}.viewmodel;

public class ${featureName}ViewModel extends BaseViewModel {

<#if generateInterfaceNavigator>
${navigatorName} navigator;
public ${featureName}ViewModel(${navigatorName} navigator){
	this.navigator = navigator;
}
</#if>
}
