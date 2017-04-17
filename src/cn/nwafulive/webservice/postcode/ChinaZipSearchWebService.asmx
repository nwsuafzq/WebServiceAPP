<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://WebXml.com.cn/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://WebXml.com.cn/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;中国邮政编码搜索 WEB 服务&lt;/strong&gt;包含中国全部邮政编码共计187285条记录，是目前最完整的邮政编码数据，精确到乡镇级、城市精确到街道，支持邮政编码&lt;-&gt;城市、乡镇、街道的双向查询。此邮政编码查询仅供参考，如邮政编码或地址有变动请以当地邮局为准，也请及时&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;通知我们&lt;/a&gt;进行更正。&lt;br /&gt;此邮政编码查询Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://WebXml.com.cn/">
      <s:element name="getSupportProvince">
        <s:complexType />
      </s:element>
      <s:element name="getSupportProvinceResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getSupportProvinceResult" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfString">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="getSupportCity">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="byProvinceName" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getSupportCityResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getSupportCityResult" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getSupportProvinceCity">
        <s:complexType />
      </s:element>
      <s:element name="getSupportProvinceCityResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getSupportProvinceCityResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getAddressByZipCode">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="theZipCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="userID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getAddressByZipCodeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getAddressByZipCodeResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getZipCodeByAddress">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="theProvinceName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="theCityName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="theAddress" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="userID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="getZipCodeByAddressResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="getZipCodeByAddressResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ArrayOfString" nillable="true" type="tns:ArrayOfString" />
      <s:element name="DataSet" nillable="true">
        <s:complexType>
          <s:sequence>
            <s:element ref="s:schema" />
            <s:any />
          </s:sequence>
        </s:complexType>
      </s:element>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="getSupportProvinceSoapIn">
    <wsdl:part name="parameters" element="tns:getSupportProvince" />
  </wsdl:message>
  <wsdl:message name="getSupportProvinceSoapOut">
    <wsdl:part name="parameters" element="tns:getSupportProvinceResponse" />
  </wsdl:message>
  <wsdl:message name="getSupportCitySoapIn">
    <wsdl:part name="parameters" element="tns:getSupportCity" />
  </wsdl:message>
  <wsdl:message name="getSupportCitySoapOut">
    <wsdl:part name="parameters" element="tns:getSupportCityResponse" />
  </wsdl:message>
  <wsdl:message name="getSupportProvinceCitySoapIn">
    <wsdl:part name="parameters" element="tns:getSupportProvinceCity" />
  </wsdl:message>
  <wsdl:message name="getSupportProvinceCitySoapOut">
    <wsdl:part name="parameters" element="tns:getSupportProvinceCityResponse" />
  </wsdl:message>
  <wsdl:message name="getAddressByZipCodeSoapIn">
    <wsdl:part name="parameters" element="tns:getAddressByZipCode" />
  </wsdl:message>
  <wsdl:message name="getAddressByZipCodeSoapOut">
    <wsdl:part name="parameters" element="tns:getAddressByZipCodeResponse" />
  </wsdl:message>
  <wsdl:message name="getZipCodeByAddressSoapIn">
    <wsdl:part name="parameters" element="tns:getZipCodeByAddress" />
  </wsdl:message>
  <wsdl:message name="getZipCodeByAddressSoapOut">
    <wsdl:part name="parameters" element="tns:getZipCodeByAddressResponse" />
  </wsdl:message>
  <wsdl:message name="getSupportProvinceHttpGetIn" />
  <wsdl:message name="getSupportProvinceHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getSupportCityHttpGetIn">
    <wsdl:part name="byProvinceName" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getSupportCityHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getSupportProvinceCityHttpGetIn" />
  <wsdl:message name="getSupportProvinceCityHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getAddressByZipCodeHttpGetIn">
    <wsdl:part name="theZipCode" type="s:string" />
    <wsdl:part name="userID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getAddressByZipCodeHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getZipCodeByAddressHttpGetIn">
    <wsdl:part name="theProvinceName" type="s:string" />
    <wsdl:part name="theCityName" type="s:string" />
    <wsdl:part name="theAddress" type="s:string" />
    <wsdl:part name="userID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getZipCodeByAddressHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getSupportProvinceHttpPostIn" />
  <wsdl:message name="getSupportProvinceHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getSupportCityHttpPostIn">
    <wsdl:part name="byProvinceName" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getSupportCityHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="getSupportProvinceCityHttpPostIn" />
  <wsdl:message name="getSupportProvinceCityHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getAddressByZipCodeHttpPostIn">
    <wsdl:part name="theZipCode" type="s:string" />
    <wsdl:part name="userID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getAddressByZipCodeHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="getZipCodeByAddressHttpPostIn">
    <wsdl:part name="theProvinceName" type="s:string" />
    <wsdl:part name="theCityName" type="s:string" />
    <wsdl:part name="theAddress" type="s:string" />
    <wsdl:part name="userID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="getZipCodeByAddressHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:portType name="ChinaZipSearchWebServiceSoap">
    <wsdl:operation name="getSupportProvince">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本邮政编码查询Web Services支持的省份/直辖市信息&lt;/h3&gt;&lt;p&gt;输入参数：无； 返回数据：一个一维字符串数组 String()，内容为省份/直辖市的名称。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportProvinceSoapIn" />
      <wsdl:output message="tns:getSupportProvinceSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getSupportCity">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过省份/直辖市查询本邮政编码查询Web Services支持的城市、地区信息&lt;/h3&gt;&lt;p&gt;输入参数：byProvinceName = 指定的省份/直辖市，若为空则默认上海；返回数据：一个一维字符串数组 String()，结构为：城市、地区(省份/直辖市)。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportCitySoapIn" />
      <wsdl:output message="tns:getSupportCitySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getSupportProvinceCity">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本邮政编码查询Web Services支持的全部省份/直辖市 和 城市、地区信息&lt;/h3&gt;&lt;p&gt;输入参数：空；返回数据：DataSet，结构为：Item.(CITY)=城市、地区，Item.(PROVINCE)=省份/直辖市。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportProvinceCitySoapIn" />
      <wsdl:output message="tns:getSupportProvinceCitySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getAddressByZipCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过邮政编码查询本邮政编码查询Web Services支持地址数据&lt;/h3&gt;&lt;p&gt;输入参数：theZipCode = 中国的6位邮政编码，若为空则默认上海200080，userID = 商业用户ID（普通用户不需要）；返回数据：DataSet，结构为：Item.(ADDRESS)=街道、乡镇，Item.(CITY)=城市、地区，Item.(PROVINCE)=省份/直辖市，Item.(ZIP)=邮政编码。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getAddressByZipCodeSoapIn" />
      <wsdl:output message="tns:getAddressByZipCodeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="getZipCodeByAddress">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过省份、城市、地址查询本邮政编码查询Web Services支持邮政编码数据&lt;/h3&gt;&lt;p&gt;输入参数：theProvinceName = 省份/直辖市（必须按照 getSupportProvince 输入），theCityName = 城市、地区，theAddress = 街道、乡镇，userID = 商业用户ID（普通用户不需要），theProvinceName若为空则默认上海，支持模糊查询，免费用户最多输出20条相关数据（如需显示更多请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;）；返回数据：DataSet，结构为：Item.(ADDRESS)=街道、乡镇，Item.(CITY)=城市、地区，Item.(PROVINCE)=省份/直辖市，Item.(ZIP)=邮政编码。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getZipCodeByAddressSoapIn" />
      <wsdl:output message="tns:getZipCodeByAddressSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="ChinaZipSearchWebServiceHttpGet">
    <wsdl:operation name="getSupportProvince">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本邮政编码查询Web Services支持的省份/直辖市信息&lt;/h3&gt;&lt;p&gt;输入参数：无； 返回数据：一个一维字符串数组 String()，内容为省份/直辖市的名称。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportProvinceHttpGetIn" />
      <wsdl:output message="tns:getSupportProvinceHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getSupportCity">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过省份/直辖市查询本邮政编码查询Web Services支持的城市、地区信息&lt;/h3&gt;&lt;p&gt;输入参数：byProvinceName = 指定的省份/直辖市，若为空则默认上海；返回数据：一个一维字符串数组 String()，结构为：城市、地区(省份/直辖市)。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportCityHttpGetIn" />
      <wsdl:output message="tns:getSupportCityHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getSupportProvinceCity">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本邮政编码查询Web Services支持的全部省份/直辖市 和 城市、地区信息&lt;/h3&gt;&lt;p&gt;输入参数：空；返回数据：DataSet，结构为：Item.(CITY)=城市、地区，Item.(PROVINCE)=省份/直辖市。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportProvinceCityHttpGetIn" />
      <wsdl:output message="tns:getSupportProvinceCityHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getAddressByZipCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过邮政编码查询本邮政编码查询Web Services支持地址数据&lt;/h3&gt;&lt;p&gt;输入参数：theZipCode = 中国的6位邮政编码，若为空则默认上海200080，userID = 商业用户ID（普通用户不需要）；返回数据：DataSet，结构为：Item.(ADDRESS)=街道、乡镇，Item.(CITY)=城市、地区，Item.(PROVINCE)=省份/直辖市，Item.(ZIP)=邮政编码。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getAddressByZipCodeHttpGetIn" />
      <wsdl:output message="tns:getAddressByZipCodeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="getZipCodeByAddress">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过省份、城市、地址查询本邮政编码查询Web Services支持邮政编码数据&lt;/h3&gt;&lt;p&gt;输入参数：theProvinceName = 省份/直辖市（必须按照 getSupportProvince 输入），theCityName = 城市、地区，theAddress = 街道、乡镇，userID = 商业用户ID（普通用户不需要），theProvinceName若为空则默认上海，支持模糊查询，免费用户最多输出20条相关数据（如需显示更多请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;）；返回数据：DataSet，结构为：Item.(ADDRESS)=街道、乡镇，Item.(CITY)=城市、地区，Item.(PROVINCE)=省份/直辖市，Item.(ZIP)=邮政编码。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getZipCodeByAddressHttpGetIn" />
      <wsdl:output message="tns:getZipCodeByAddressHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="ChinaZipSearchWebServiceHttpPost">
    <wsdl:operation name="getSupportProvince">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本邮政编码查询Web Services支持的省份/直辖市信息&lt;/h3&gt;&lt;p&gt;输入参数：无； 返回数据：一个一维字符串数组 String()，内容为省份/直辖市的名称。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportProvinceHttpPostIn" />
      <wsdl:output message="tns:getSupportProvinceHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getSupportCity">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过省份/直辖市查询本邮政编码查询Web Services支持的城市、地区信息&lt;/h3&gt;&lt;p&gt;输入参数：byProvinceName = 指定的省份/直辖市，若为空则默认上海；返回数据：一个一维字符串数组 String()，结构为：城市、地区(省份/直辖市)。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportCityHttpPostIn" />
      <wsdl:output message="tns:getSupportCityHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getSupportProvinceCity">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;获得本邮政编码查询Web Services支持的全部省份/直辖市 和 城市、地区信息&lt;/h3&gt;&lt;p&gt;输入参数：空；返回数据：DataSet，结构为：Item.(CITY)=城市、地区，Item.(PROVINCE)=省份/直辖市。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getSupportProvinceCityHttpPostIn" />
      <wsdl:output message="tns:getSupportProvinceCityHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getAddressByZipCode">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过邮政编码查询本邮政编码查询Web Services支持地址数据&lt;/h3&gt;&lt;p&gt;输入参数：theZipCode = 中国的6位邮政编码，若为空则默认上海200080，userID = 商业用户ID（普通用户不需要）；返回数据：DataSet，结构为：Item.(ADDRESS)=街道、乡镇，Item.(CITY)=城市、地区，Item.(PROVINCE)=省份/直辖市，Item.(ZIP)=邮政编码。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getAddressByZipCodeHttpPostIn" />
      <wsdl:output message="tns:getAddressByZipCodeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="getZipCodeByAddress">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;br /&gt;&lt;h3&gt;通过省份、城市、地址查询本邮政编码查询Web Services支持邮政编码数据&lt;/h3&gt;&lt;p&gt;输入参数：theProvinceName = 省份/直辖市（必须按照 getSupportProvince 输入），theCityName = 城市、地区，theAddress = 街道、乡镇，userID = 商业用户ID（普通用户不需要），theProvinceName若为空则默认上海，支持模糊查询，免费用户最多输出20条相关数据（如需显示更多请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;）；返回数据：DataSet，结构为：Item.(ADDRESS)=街道、乡镇，Item.(CITY)=城市、地区，Item.(PROVINCE)=省份/直辖市，Item.(ZIP)=邮政编码。&lt;/p&gt;&lt;br /&gt;</wsdl:documentation>
      <wsdl:input message="tns:getZipCodeByAddressHttpPostIn" />
      <wsdl:output message="tns:getZipCodeByAddressHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="ChinaZipSearchWebServiceSoap" type="tns:ChinaZipSearchWebServiceSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getSupportProvince">
      <soap:operation soapAction="http://WebXml.com.cn/getSupportProvince" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportCity">
      <soap:operation soapAction="http://WebXml.com.cn/getSupportCity" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportProvinceCity">
      <soap:operation soapAction="http://WebXml.com.cn/getSupportProvinceCity" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getAddressByZipCode">
      <soap:operation soapAction="http://WebXml.com.cn/getAddressByZipCode" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getZipCodeByAddress">
      <soap:operation soapAction="http://WebXml.com.cn/getZipCodeByAddress" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ChinaZipSearchWebServiceSoap12" type="tns:ChinaZipSearchWebServiceSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="getSupportProvince">
      <soap12:operation soapAction="http://WebXml.com.cn/getSupportProvince" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportCity">
      <soap12:operation soapAction="http://WebXml.com.cn/getSupportCity" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportProvinceCity">
      <soap12:operation soapAction="http://WebXml.com.cn/getSupportProvinceCity" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getAddressByZipCode">
      <soap12:operation soapAction="http://WebXml.com.cn/getAddressByZipCode" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getZipCodeByAddress">
      <soap12:operation soapAction="http://WebXml.com.cn/getZipCodeByAddress" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ChinaZipSearchWebServiceHttpGet" type="tns:ChinaZipSearchWebServiceHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="getSupportProvince">
      <http:operation location="/getSupportProvince" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportCity">
      <http:operation location="/getSupportCity" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportProvinceCity">
      <http:operation location="/getSupportProvinceCity" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getAddressByZipCode">
      <http:operation location="/getAddressByZipCode" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getZipCodeByAddress">
      <http:operation location="/getZipCodeByAddress" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ChinaZipSearchWebServiceHttpPost" type="tns:ChinaZipSearchWebServiceHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="getSupportProvince">
      <http:operation location="/getSupportProvince" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportCity">
      <http:operation location="/getSupportCity" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getSupportProvinceCity">
      <http:operation location="/getSupportProvinceCity" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getAddressByZipCode">
      <http:operation location="/getAddressByZipCode" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="getZipCodeByAddress">
      <http:operation location="/getZipCodeByAddress" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="ChinaZipSearchWebService">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">&lt;a href="http://www.webxml.com.cn/" target="_blank"&gt;WebXml.com.cn&lt;/a&gt; &lt;strong&gt;中国邮政编码搜索 WEB 服务&lt;/strong&gt;包含中国全部邮政编码共计187285条记录，是目前最完整的邮政编码数据，精确到乡镇级、城市精确到街道，支持邮政编码&lt;-&gt;城市、乡镇、街道的双向查询。此邮政编码查询仅供参考，如邮政编码或地址有变动请以当地邮局为准，也请及时&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;通知我们&lt;/a&gt;进行更正。&lt;br /&gt;此邮政编码查询Web Services请不要用于任何商业目的，若有需要请&lt;a href="http://www.webxml.com.cn/zh_cn/contact_us.aspx" target="_blank"&gt;联系我们&lt;/a&gt;，欢迎技术交流。 QQ：8409035&lt;br /&gt;&lt;strong&gt;使用本站 WEB 服务请注明或链接本站：http://www.webxml.com.cn/ 感谢大家的支持&lt;/strong&gt;！&lt;br /&gt;&lt;br /&gt;&amp;nbsp;</wsdl:documentation>
    <wsdl:port name="ChinaZipSearchWebServiceSoap" binding="tns:ChinaZipSearchWebServiceSoap">
      <soap:address location="http://ws.webxml.com.cn/WebServices/ChinaZipSearchWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="ChinaZipSearchWebServiceSoap12" binding="tns:ChinaZipSearchWebServiceSoap12">
      <soap12:address location="http://ws.webxml.com.cn/WebServices/ChinaZipSearchWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="ChinaZipSearchWebServiceHttpGet" binding="tns:ChinaZipSearchWebServiceHttpGet">
      <http:address location="http://ws.webxml.com.cn/WebServices/ChinaZipSearchWebService.asmx" />
    </wsdl:port>
    <wsdl:port name="ChinaZipSearchWebServiceHttpPost" binding="tns:ChinaZipSearchWebServiceHttpPost">
      <http:address location="http://ws.webxml.com.cn/WebServices/ChinaZipSearchWebService.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>