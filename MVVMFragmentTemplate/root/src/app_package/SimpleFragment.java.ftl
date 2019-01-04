package ${packageName}.fragment;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import br.com.intermedium.BaseFragment;
import ${packageName}.viewmodel.${className}ViewModel;
<#if generateInterfaceNavigator>
import ${packageName}.viewmodel.${navigatorName};
</#if>
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

public class ${className} extends BaseFragment<${underscoreToCamelCase(layoutName)}Binding, ${className}ViewModel> <#if generateInterfaceNavigator!true> implements ${navigatorName}</#if>{
    
    public static ${className} create() {
        return new ${className}();
    }

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
    <#if generateLayout>
        mBinding = ${underscoreToCamelCase(layoutName)}Binding.inflate(inflater, container, false);
    </#if>
if (mViewModel == null)
<#if generateInterfaceNavigator>
           mViewModel = new ${className}ViewModel(${className}.this);
<#else>
           mViewModel = new ${className}ViewModel();
</#if>

       mBinding.setViewModel(mViewModel);

        return mBinding.getRoot();
    }
}
