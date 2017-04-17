<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://WebXml.com.cn/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://WebXml.com.cn/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;IP地址搜索 WEB 服务&lt;/strong&gt;包含中国和国外已知的IP地址数据，是目前最完整的IP地址数据，记录数量现已超过37万条并还在不断更新和增加中，因IP地址在不断变化，此IP地址数据查询仅供参考。&lt;/br&gt;此IP地址搜索Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://WebXml.com.cn/">
      <s:element name="getCountryCityByIp">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="theIpAddress" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getCountryCityByIpResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getCountryCityByIpResult" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfString">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="getGeoIPContext">
        <s:complexType />
      </s:element>
      <s:element name="getGeoIPContextResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getGeoIPContextResult" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getVersionTime">
        <s:complexType />
      </s:element>
      <s:element name="getVersionTimeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getVersionTimeResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ArrayOfString" nillable="true" type="tns:ArrayOfString" />
      <s:element name="string" nillable="true" type="s:string" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="getCountryCityByIpSoapIn">
    <wsdl:part name="parameters" element="tns:getCountryCityByIp" />
  </wsdl:message>
  <wsdl:message name="getCountryCityByIpSoapOut">
    <wsdl:part name="parameters" element="tns:getCountryCityByIpResponse" />
  </wsdl:message>
  <wsdl:message name="getGeoIPContextSoapIn">
    <wsdl:part name="parameters" element="tns:getGeoIPContext" />
  </wsdl:message>
  <wsdl:message name="getGeoIPContextSoapOut">
    <wsdl:part name="parameters" element="tns:getGeoIPContextResponse" />
  </wsdl:message>
  <wsdl:message name="getVersionTimeSoapIn">
    <wsdl:part name="parameters" element="tns:getVersionTime" />
  </wsdl:message>
  <wsdl:message name="getVersionTimeSoapOut">
    <wsdl:part name="parameters" element="tns:getVersionTimeResponse" />
  </wsdl:message>
  <wsdl:message name="getCountryCityByIpHttpGetIn">
    <wsdl:part name="theIpAddress" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getCountryCityByIpHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getGeoIPContextHttpGetIn" />
  <wsdl:message name="getGeoIPContextHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getVersionTimeHttpGetIn" />
  <wsdl:message name="getVersionTimeHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="getCountryCityByIpHttpPostIn">
    <wsdl:part name="theIpAddress" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getCountryCityByIpHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getGeoIPContextHttpPostIn" />
  <wsdl:message name="getGeoIPContextHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getVersionTimeHttpPostIn" />
  <wsdl:message name="getVersionTimeHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:portType name="IpAddressSearchWebServiceSoap">
    <wsdl:operation name="getCountryCityByIp">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过输入IP地址查询国家、城市、所有者等信息。没有注明国家的为中国&lt;/h3&gt;&lt;p&gt;输入参数：IP地址（自动替换 " 。" 为 "."），返回数据： 一个一维字符串数组String(1)，String(0) = IP地址；String(1) = 查询结果或提示信息&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getCountryCityByIpSoapIn" />
      <wsdl:output message="tns:getCountryCityByIpSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getGeoIPContext">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得您的IP地址和地址信息&lt;/h3&gt;&lt;p&gt;输入参数：无，返回数据： 一个一维字符串数组String(1)，String(0) = IP地址；String(1) = 地址信息&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getGeoIPContextSoapIn" />
      <wsdl:output message="tns:getGeoIPContextSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本IP地址搜索 WEB 服务的数据库版本更新时间&lt;/h3&gt;&lt;p&gt;输入参数：无，输出参数 String&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getVersionTimeSoapIn" />
      <wsdl:output message="tns:getVersionTimeSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="IpAddressSearchWebServiceHttpGet">
    <wsdl:operation name="getCountryCityByIp">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过输入IP地址查询国家、城市、所有者等信息。没有注明国家的为中国&lt;/h3&gt;&lt;p&gt;输入参数：IP地址（自动替换 " 。" 为 "."），返回数据： 一个一维字符串数组String(1)，String(0) = IP地址；String(1) = 查询结果或提示信息&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getCountryCityByIpHttpGetIn" />
      <wsdl:output message="tns:getCountryCityByIpHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getGeoIPContext">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得您的IP地址和地址信息&lt;/h3&gt;&lt;p&gt;输入参数：无，返回数据： 一个一维字符串数组String(1)，String(0) = IP地址；String(1) = 地址信息&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getGeoIPContextHttpGetIn" />
      <wsdl:output message="tns:getGeoIPContextHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本IP地址搜索 WEB 服务的数据库版本更新时间&lt;/h3&gt;&lt;p&gt;输入参数：无，输出参数 String&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getVersionTimeHttpGetIn" />
      <wsdl:output message="tns:getVersionTimeHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="IpAddressSearchWebServiceHttpPost">
    <wsdl:operation name="getCountryCityByIp">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过输入IP地址查询国家、城市、所有者等信息。没有注明国家的为中国&lt;/h3&gt;&lt;p&gt;输入参数：IP地址（自动替换 " 。" 为 "."），返回数据： 一个一维字符串数组String(1)，String(0) = IP地址；String(1) = 查询结果或提示信息&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getCountryCityByIpHttpPostIn" />
      <wsdl:output message="tns:getCountryCityByIpHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getGeoIPContext">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得您的IP地址和地址信息&lt;/h3&gt;&lt;p&gt;输入参数：无，返回数据： 一个一维字符串数组String(1)，String(0) = IP地址；String(1) = 地址信息&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getGeoIPContextHttpPostIn" />
      <wsdl:output message="tns:getGeoIPContextHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本IP地址搜索 WEB 服务的数据库版本更新时间&lt;/h3&gt;&lt;p&gt;输入参数：无，输出参数 String&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getVersionTimeHttpPostIn" />
      <wsdl:output message="tns:getVersionTimeHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="IpAddressSearchWebServiceSoap" type="tns:IpAddressSearchWebServiceSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getCountryCityByIp">
      <soap:operation soapAction="http://WebXml.com.cn/getCountryCityByIp" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getGeoIPContext">
      <soap:operation soapAction="http://WebXml.com.cn/getGeoIPContext" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <soap:operation soapAction="http://WebXml.com.cn/getVersionTime" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="IpAddressSearchWebServiceSoap12" type="tns:IpAddressSearchWebServiceSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getCountryCityByIp">
      <soap12:operation soapAction="http://WebXml.com.cn/getCountryCityByIp" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getGeoIPContext">
      <soap12:operation soapAction="http://WebXml.com.cn/getGeoIPContext" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <soap12:operation soapAction="http://WebXml.com.cn/getVersionTime" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="IpAddressSearchWebServiceHttpGet" type="tns:IpAddressSearchWebServiceHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="getCountryCityByIp">
      <http:operation location="/getCountryCityByIp" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getGeoIPContext">
      <http:operation location="/getGeoIPContext" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <http:operation location="/getVersionTime" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="IpAddressSearchWebServiceHttpPost" type="tns:IpAddressSearchWebServiceHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="getCountryCityByIp">
      <http:operation location="/getCountryCityByIp" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getGeoIPContext">
      <http:operation location="/getGeoIPContext" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getVersionTime">
      <http:operation location="/getVersionTime" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="IpAddressSearchWebService">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;IP地址搜索 WEB 服务&lt;/strong&gt;包含中国和国外已知的IP地址数据，是目前最完整的IP地址数据，记录数量现已超过37万条并还在不断更新和增加中，因IP地址在不断变化，此IP地址数据查询仅供参考。&lt;/br&gt;此IP地址搜索Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
    <wsdl:port name="IpAddressSearchWebServiceSoap" binding="tns:IpAddressSearchWebServiceSoap">
      <soap:address location="http://ws.webxml.com.cn/WebServices/IpAddressSearchWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="IpAddressSearchWebServiceSoap12" binding="tns:IpAddressSearchWebServiceSoap12">
      <soap12:address location="http://ws.webxml.com.cn/WebServices/IpAddressSearchWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="IpAddressSearchWebServiceHttpGet" binding="tns:IpAddressSearchWebServiceHttpGet">
      <http:address location="http://ws.webxml.com.cn/WebServices/IpAddressSearchWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="IpAddressSearchWebServiceHttpPost" binding="tns:IpAddressSearchWebServiceHttpPost">
      <http:address location="http://ws.webxml.com.cn/WebServices/IpAddressSearchWebService.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>