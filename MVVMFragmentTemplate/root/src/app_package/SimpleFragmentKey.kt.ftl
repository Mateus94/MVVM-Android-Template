package ${packageName}.key

import android.support.v4.app.Fragment
import ${packageName}.fragment.${className}
import org.parceler.Parcel

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
        throw new NotImplementedException("Not implemented Yet!")
    }

    override fun title() : Int { 
        throw new NotImplementedException("Not implemented Yet!")
    }

    override fun shouldShowUp() : Boolean = true
}
