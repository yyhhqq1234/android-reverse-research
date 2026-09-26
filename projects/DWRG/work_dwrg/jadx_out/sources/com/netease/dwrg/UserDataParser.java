package com.netease.dwrg;

import android.util.Log;
import java.io.InputStream;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes.dex */
public class UserDataParser {
    public boolean m_has_timestamp;
    public String m_timestamp;

    public boolean hasTimestamp() {
        return this.m_has_timestamp;
    }

    public String getTimestamp() {
        return this.m_timestamp;
    }

    /* loaded from: classes.dex */
    class XMLHandler extends DefaultHandler {
        public String m_timestamp;
        private StringBuffer m_buf = new StringBuffer();
        public boolean m_real_has_timestamp = false;
        public boolean m_has_timestamp = false;

        public XMLHandler() {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
            if (qName.equals("package_timestamp")) {
                this.m_has_timestamp = true;
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] chars, int start, int length) throws SAXException {
            if (this.m_has_timestamp) {
                this.m_buf.append(chars, start, length);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String uri, String localName, String qName) throws SAXException {
            if (qName.equals("package_timestamp")) {
                this.m_timestamp = this.m_buf.toString().trim();
                this.m_buf.setLength(0);
                this.m_has_timestamp = false;
                this.m_real_has_timestamp = true;
            }
        }
    }

    public void parse(InputStream is) {
        try {
            XMLReader xmlReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            XMLHandler handler = new XMLHandler();
            xmlReader.setContentHandler(handler);
            xmlReader.parse(new InputSource(is));
            this.m_has_timestamp = handler.m_real_has_timestamp;
            this.m_timestamp = handler.m_timestamp;
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("NeoXDevice", "PlatformConfigParser parse failed!");
        }
    }
}
