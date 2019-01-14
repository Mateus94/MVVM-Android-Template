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
        throw new NotImplementedException("Not implemented Yet!");
    }

    @Override
    public int title() {
        throw new NotImplementedException("Not implemented Yet!");
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
