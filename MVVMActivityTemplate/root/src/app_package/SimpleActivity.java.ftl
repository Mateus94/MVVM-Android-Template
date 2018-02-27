package ${packageName};

import android.os.Bundle;
import android.databinding.DataBindingUtil;


<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

public class ${activityClass} extends BaseActivity <#if generateInterfaceNavigator!true> implements ${activityClass}Navigator</#if>{

${underscoreToCamelCase(layoutName)}Binding mBinding;
${activityClass}ViewModel mViewModel;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    <#if generateLayout>
        mBinding = DataBindingUtil.setContentView(this, R.layout.${layoutName});
    </#if>
if (mViewModel == null)
<#if generateInterfaceNavigator>
           mViewModel = new ${activityClass}ViewModel(${activityClass}.this);
<#else>
           mViewModel = new ${activityClass}ViewModel();
</#if>

       mBinding.setViewModel(mViewModel);

<#include "../../../../common/jni_code_usage.java.ftl">
    }
<#include "../../../../common/jni_code_snippet.java.ftl">
}
