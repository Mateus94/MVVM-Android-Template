package ${escapeKotlinIdentifiers(packageName)}.fragment

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${packageName}.viewmodel.${featureName}ViewModel
<#if generateInterfaceNavigator>
import ${packageName}.viewmodel.${navigatorName}
</#if>
<#if includeCppSupport!false>
import kotlinx.android.synthetic.main.${layoutName}.*
</#if>

class ${className} : BaseFragment<${underscoreToCamelCase(layoutName)}Binding, ${featureName}ViewModel>()<#if generateInterfaceNavigator>, ${navigatorName}</#if> {
    
    companion object {
        @JvmStatic
        fun create(): ${className} {
            return ${className}()
        }
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        mBinding = ${underscoreToCamelCase(layoutName)}Binding.inflate(inflater, container, false)

        if (mViewModel == null) {
            mViewModel = ${featureName}ViewModel(<#if generateInterfaceNavigator>this</#if>)
        }

        mBinding.viewModel = mViewModel
        return mBinding.root
    }
}
