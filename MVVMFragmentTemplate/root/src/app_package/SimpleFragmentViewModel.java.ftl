package ${packageName}.viewmodel;

public class ${className}ViewModel extends BaseViewModel {

<#if generateInterfaceNavigator>
${navigatorName} navigator;
public ${className}ViewModel(${navigatorName} navigator){
	this.navigator = navigator;
}
</#if>
}
