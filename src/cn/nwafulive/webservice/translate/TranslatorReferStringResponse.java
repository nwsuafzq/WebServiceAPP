/**
 * TranslatorReferStringResponse.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package cn.nwafulive.webservice.translate;

public class TranslatorReferStringResponse  implements java.io.Serializable {
    private java.lang.String[] translatorReferStringResult;

    public TranslatorReferStringResponse() {
    }

    public TranslatorReferStringResponse(
           java.lang.String[] translatorReferStringResult) {
           this.translatorReferStringResult = translatorReferStringResult;
    }


    /**
     * Gets the translatorReferStringResult value for this TranslatorReferStringResponse.
     * 
     * @return translatorReferStringResult
     */
    public java.lang.String[] getTranslatorReferStringResult() {
        return translatorReferStringResult;
    }


    /**
     * Sets the translatorReferStringResult value for this TranslatorReferStringResponse.
     * 
     * @param translatorReferStringResult
     */
    public void setTranslatorReferStringResult(java.lang.String[] translatorReferStringResult) {
        this.translatorReferStringResult = translatorReferStringResult;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof TranslatorReferStringResponse)) return false;
        TranslatorReferStringResponse other = (TranslatorReferStringResponse) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.translatorReferStringResult==null && other.getTranslatorReferStringResult()==null) || 
             (this.translatorReferStringResult!=null &&
              java.util.Arrays.equals(this.translatorReferStringResult, other.getTranslatorReferStringResult())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getTranslatorReferStringResult() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getTranslatorReferStringResult());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getTranslatorReferStringResult(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(TranslatorReferStringResponse.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://WebXml.com.cn/", ">TranslatorReferStringResponse"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("translatorReferStringResult");
        elemField.setXmlName(new javax.xml.namespace.QName("http://WebXml.com.cn/", "TranslatorReferStringResult"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        elemField.setItemQName(new javax.xml.namespace.QName("http://WebXml.com.cn/", "string"));
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
