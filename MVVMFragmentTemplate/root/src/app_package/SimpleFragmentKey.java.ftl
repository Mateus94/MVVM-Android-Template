package ${packageName}.key;

import android.support.v4.app.Fragment;
import ${packageName}.fragment.${className};
import org.parceler.Parcel;

@Parcel(Parcel.Serialization.FIELD)
public class ${keyName} extends BaseKey {

    public static ${keyName} create() {
        return new ${keyName}();
    }

    @Override
    public int navigationViewId() {
        if(true)
            throw new IllegalStateException("${keyName} está faltando passar um parametro");
        return 0;
    }

    @Override
    public int title() { 
        if(true)
            throw new IllegalStateException("${keyName} está faltando passar um parametro");
        return 0;
    }

    @Override
    public Fragment createFragment() {
        return ${className}.create();
    }

    @Override
    public boolean shouldShowUp() {
        return true;
    }
}
