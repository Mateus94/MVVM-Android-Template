package ${packageName}.viewmodel

import br.com.intermedium.webbanking.BaseViewModel

class ${featureName}ViewModel<#if generateInterfaceNavigator>(internal var navigator: ${navigatorName})</#if> : BaseViewModel()
