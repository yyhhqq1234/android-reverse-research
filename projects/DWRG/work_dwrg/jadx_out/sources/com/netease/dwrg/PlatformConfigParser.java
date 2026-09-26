package com.netease.dwrg;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Locale;
import java.util.Stack;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes.dex */
public class PlatformConfigParser {
    private Context m_context;
    private HashMap<String, Variable> m_variables = new HashMap<>();
    private HashMap<String, Boolean> m_options = new HashMap<>();

    /* loaded from: classes.dex */
    public class Variable {
        protected String m_name;

        public Variable(String name) {
            this.m_name = name;
        }

        public boolean evaluate(String predicate, String object) {
            return false;
        }

        public String getName() {
            return this.m_name;
        }
    }

    /* loaded from: classes.dex */
    public class IntVariable extends Variable {
        protected int m_value;

        public IntVariable(String name, int value) {
            super(name);
            this.m_value = value;
        }

        public int getValue() {
            return this.m_value;
        }

        @Override // com.netease.dwrg.PlatformConfigParser.Variable
        public boolean evaluate(String predicate, String object) {
            try {
                int v = Integer.parseInt(object);
                if (predicate.equals("==")) {
                    return this.m_value == v;
                }
                if (predicate.equals("!=")) {
                    return this.m_value != v;
                }
                if (predicate.equals(">=")) {
                    return this.m_value >= v;
                }
                if (predicate.equals(">")) {
                    return this.m_value > v;
                }
                if (predicate.equals("<=")) {
                    return this.m_value <= v;
                }
                if (predicate.equals("<")) {
                    return this.m_value < v;
                }
                Log.e("NeoXDevice", "Unrecognized predicate " + predicate);
                return false;
            } catch (NumberFormatException e) {
                e.printStackTrace();
                return false;
            }
        }
    }

    /* loaded from: classes.dex */
    public class StringVariable extends Variable {
        protected String m_value;

        public StringVariable(String name, String value) {
            super(name);
            this.m_value = value.toLowerCase(Locale.getDefault());
        }

        public String getValue() {
            return this.m_value;
        }

        @Override // com.netease.dwrg.PlatformConfigParser.Variable
        public boolean evaluate(String predicate, String object) {
            String object2 = object.toLowerCase(Locale.getDefault());
            if (predicate.equals("==")) {
                return this.m_value.equals(object2);
            }
            if (predicate.equals("!=")) {
                return !this.m_value.equals(object2);
            }
            if (predicate.equals("contain")) {
                return this.m_value.contains(object2);
            }
            if (predicate.equals("startwith")) {
                return this.m_value.startsWith(object2);
            }
            if (predicate.equals("endwith")) {
                return this.m_value.endsWith(object2);
            }
            if (predicate.equals("not contain")) {
                return !this.m_value.contains(object2);
            }
            if (predicate.equals("not startwith")) {
                return !this.m_value.startsWith(object2);
            }
            if (predicate.equals("not endwith")) {
                return !this.m_value.endsWith(object2);
            }
            Log.e("NeoXDevice", "Unrecognized predicate " + predicate);
            return false;
        }
    }

    public PlatformConfigParser(Context context) {
        this.m_context = context;
    }

    public void addVariable(Variable v) {
        this.m_variables.put(v.getName(), v);
    }

    public void addVariable(String name, int i) {
        this.m_variables.put(name, new IntVariable(name, i));
    }

    public void addVariable(String name, String s) {
        this.m_variables.put(name, new StringVariable(name, s));
    }

    public HashMap<String, Boolean> getOptions() {
        return this.m_options;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class XMLHandler extends DefaultHandler {
        public static final int AND = 1;
        public static final int OR = 2;
        public static final int UNKNOWN = 0;
        private HashMap<String, Boolean> m_options;
        private HashMap<String, Variable> m_variables;
        private Stack<Integer> m_condition_group = new Stack<>();
        private Stack<Boolean> m_condition = new Stack<>();
        private String m_config = null;
        private boolean m_option = false;

        public XMLHandler(HashMap<String, Variable> v, HashMap<String, Boolean> o) {
            this.m_variables = v;
            this.m_options = o;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
            int c;
            if (qName.equals("Config")) {
                this.m_condition_group.clear();
                this.m_condition.clear();
                this.m_config = attributes.getValue("name");
                return;
            }
            if (qName.equals("ConditionGroup")) {
                String t = attributes.getValue("type");
                if (t.equals("and")) {
                    c = 1;
                    this.m_option = true;
                } else {
                    c = 2;
                    this.m_option = false;
                }
                this.m_condition_group.push(Integer.valueOf(c));
                this.m_condition.push(Boolean.valueOf(this.m_option));
                return;
            }
            if (qName.equals("Condition")) {
                int c2 = this.m_condition_group.peek().intValue();
                if (c2 == 1) {
                    if (this.m_option) {
                        String subject = attributes.getValue("subject");
                        String predicate = attributes.getValue("predicate");
                        String object = attributes.getValue("object");
                        Variable v = this.m_variables.get(subject);
                        this.m_option = this.m_option && v.evaluate(predicate, object);
                        return;
                    }
                    return;
                }
                if (!this.m_option) {
                    String subject2 = attributes.getValue("subject");
                    String predicate2 = attributes.getValue("predicate");
                    String object2 = attributes.getValue("object");
                    Variable v2 = this.m_variables.get(subject2);
                    this.m_option = this.m_option || v2.evaluate(predicate2, object2);
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String uri, String localName, String qName) throws SAXException {
            if (qName.equals("Config")) {
                this.m_options.put(this.m_config, Boolean.valueOf(this.m_option));
                this.m_config = null;
                return;
            }
            if (qName.equals("ConditionGroup")) {
                this.m_condition_group.pop();
                this.m_condition.pop();
                if (!this.m_condition_group.empty()) {
                    int c = this.m_condition_group.peek().intValue();
                    if (c == 1) {
                        this.m_option = this.m_option && this.m_condition.peek().booleanValue();
                    } else {
                        this.m_option = this.m_option || this.m_condition.peek().booleanValue();
                    }
                }
            }
        }
    }

    private File decryptFile(InputStream inputStream) {
        byte[] buffer = new byte[1024];
        try {
            File decryptedFile = createTempFile();
            FileOutputStream outputStream = new FileOutputStream(decryptedFile);
            while (true) {
                int readCount = inputStream.read(buffer);
                if (readCount > 0) {
                    decryptData(buffer);
                    outputStream.write(buffer, 0, readCount);
                } else {
                    inputStream.close();
                    outputStream.flush();
                    outputStream.close();
                    return decryptedFile;
                }
            }
        } catch (Exception e) {
            Log.e("NeoXDevice", "PlatformConfigParser decryptFile failed!");
            return null;
        }
    }

    private File createTempFile() {
        try {
            File outputDir = this.m_context.getCacheDir();
            File outputFile = File.createTempFile("EncrytedPlatformConfig", "xml", outputDir);
            if (!outputFile.exists()) {
                File parent = outputFile.getParentFile();
                if (parent != null && !parent.exists()) {
                    parent.mkdirs();
                }
                outputFile.createNewFile();
                return outputFile;
            }
            return outputFile;
        } catch (Exception e) {
            Log.e("NeoXDevice", "PlatformConfigParser create temp file failed!");
            return null;
        }
    }

    private void encryptData(byte[] data) {
        for (int i = 0; i < data.length; i++) {
            data[i] = (byte) (data[i] ^ 255);
        }
    }

    private void decryptData(byte[] data) {
        encryptData(data);
    }

    public void parse(InputStream is, boolean needDecrypt) {
        File decryptedFile = null;
        if (needDecrypt) {
            try {
                decryptedFile = decryptFile(is);
                is = new FileInputStream(decryptedFile);
            } catch (Exception e) {
                Log.e("NeoXDevice", "PlatformConfigParser parse failed!");
                return;
            }
        }
        parse(is);
        if (needDecrypt && decryptedFile != null) {
            decryptedFile.delete();
        }
    }

    public void parse(InputStream is) {
        this.m_options.clear();
        try {
            XMLReader xmlReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            XMLHandler handler = new XMLHandler(this.m_variables, this.m_options);
            xmlReader.setContentHandler(handler);
            xmlReader.parse(new InputSource(is));
        } catch (Exception e) {
            Log.e("NeoXDevice", "PlatformConfigParser parse failed!");
        }
    }
}
