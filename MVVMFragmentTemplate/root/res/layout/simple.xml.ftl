<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    xmlns:app="http://schemas.android.com/apk/res-auto">
    <data>
        <variable
            name="viewModel"
            type="${packageName}.viewmodel.${className}ViewModel"/>
    </data>
<android.support.constraint.ConstraintLayout
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <TextView
<#if includeCppSupport!false>
        android:id="@+id/sample_text"
</#if>
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        app:layout_constraintBottom_toBottomOf="parent"
        app:layout_constraintLeft_toLeftOf="parent"
        app:layout_constraintRight_toRightOf="parent"
        app:layout_constraintTop_toTopOf="parent"
        tools:text="https://github.com/Mateus94/MVVM-Android-Template" />


</android.support.constraint.ConstraintLayout>
</layout>
