package com.netease.ntsharesdk;

import com.netease.download.Const;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ShareArgs {
    public static final String COMMENT = "comment";
    public static final String IMG_DATA = "img_data";
    public static final String IMG_PATH = "img_path";
    public static final String IMG_URL = "img_url";
    public static final String TEXT = "text";
    public static final String THUMB_DATA = "thumb_data";
    public static final String TITLE = "title";
    public static final String TO_BLOG = "to_blog";
    public static final String URL = "url";
    private HashMap<String, Object> args;
    private String failMsg;

    public ShareArgs() {
        this.args = new HashMap<>();
        this.failMsg = null;
    }

    public ShareArgs(String err) {
        this.args = new HashMap<>();
        this.failMsg = null;
        this.failMsg = err;
    }

    public Object getValue(String key) {
        return getValue(key, null);
    }

    public Object getValue(String key, Object defVal) {
        if (this.args.containsKey(key)) {
            return this.args.get(key);
        }
        if (defVal == null) {
            return (key == "title" || key == TEXT) ? "" : defVal;
        }
        return defVal;
    }

    public void setValue(String key, Object val) {
        if (val == null) {
            this.args.remove(key);
        } else {
            this.args.put(key, val);
        }
    }

    public Boolean hasImage() {
        return (getValue(IMG_PATH) == null && getValue(IMG_URL) == null && getValue(IMG_DATA) == null) ? false : true;
    }

    public Boolean hasUrl() {
        return getValue("url") != null;
    }

    public String getFailMsg() {
        return this.failMsg;
    }

    public void setFailMsg(String failMsg) {
        this.failMsg = failMsg;
    }

    public String toString() {
        String res = "";
        for (String key : this.args.keySet()) {
            res = String.valueOf(res) + key + Const.RESP_CONTENT_SPIT2 + this.args.get(key) + ",";
        }
        return res;
    }
}
