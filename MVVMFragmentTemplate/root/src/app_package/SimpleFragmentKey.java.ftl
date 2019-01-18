package ${packageName}.key;

import androidx.fragment.app.Fragment;
import ${packageName}.fragment.${className};
import org.parceler.Parcel;

@Parcel(Parcel.Serialization.FIELD)
public class ${keyName} extends BaseKey {

    public static ${keyName} create() {
        return new ${keyName}();
    }

    @Override
    public int navigationViewId() {
        return 0;
    }

    @Override
    public int title() {
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
