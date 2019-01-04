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
        if(true)
            throw IllegalStateException("${keyName} está faltando passar um parametro")
        return 0
    }

    override fun title() : Int { 
        if(true)
            throw IllegalStateException("${keyName} está faltando passar um parametro")
        return 0
    }

    override fun shouldShowUp() : Boolean = true
}
