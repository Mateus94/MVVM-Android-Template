package ${packageName}.key

import androidx.fragment.app.Fragment;
import ${packageName}.fragment.${className}
import org.parceler.
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
        throw NotImplementedException("Not implemented Yet!")
    }

    override fun title() : Int { 
        throw NotImplementedException("Not implemented Yet!")
    }

    override fun shouldShowUp() : Boolean = true
}
