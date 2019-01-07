package ${packageName}.key;

import android.support.v4.app.Fragment;
import ${packageName}.fragment.${className};
import org.parceler.Parcel;

@Parcel(Parcel.Serialization.FIELD)
public class ${keyName} extends BaseKey {

    public static ${keyName} create() {
        return new ${keyName}();
    }

    public int navigationViewId() {
        throw new NotImplementedException("Not implemented Yet!");
    }

    public int title() {
        throw new NotImplementedException("Not implemented Yet!");
    }

    public Fragment createFragment() {
        return ${className}.create();
    }

    public boolean shouldShowUp() {
        return true;
    }
}
