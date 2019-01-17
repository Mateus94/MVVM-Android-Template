package ${packageName}.key

import androidx.fragment.app.Fragment
import ${packageName}.fragment.${className}
import org.parceler.Parcel
import org.apache.commons.lang3.NotImplementedException

@Parcel(Parcel.Serialization.FIELD)
class ${keyName} : BaseKey() {

    companion object {
        @JvmStatic
        fun create(): ${keyName} {
            return ${keyName}()
        }
    }

    override fun createFragment() : Fragment = ${className}.create()

    override fun navigationViewId() : Int {
        return 0
    }

    override fun title() : Int {
        return 0
    }

    override fun shouldShowUp() : Boolean = true
}
