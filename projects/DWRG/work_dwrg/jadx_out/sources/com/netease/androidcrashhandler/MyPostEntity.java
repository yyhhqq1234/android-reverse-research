package com.netease.androidcrashhandler;

import com.netease.androidcrashhandler.util.LogUtils;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class MyPostEntity {
    private String URL;
    private Map<String, String> basicInfo;
    private MyPostCallBack callBack;
    private MyConfigCallBack configCallBack;
    private Map<String, FileForm> files;
    private Map<String, String> params;
    private Map<String, String> userDesc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class FileForm {
        public String content;
        public File file;
        public boolean isFile;
        public String uploadType;

        public FileForm(String content, String uploadType) {
            this.isFile = false;
            this.content = null;
            this.file = null;
            this.content = content;
            this.uploadType = uploadType;
        }

        public FileForm(File file, String uploadType) {
            this.isFile = false;
            this.content = null;
            this.file = null;
            this.isFile = true;
            this.file = file;
            this.uploadType = uploadType;
        }

        public File getFile() {
            return this.file;
        }

        public String getContent() {
            return this.content;
        }

        public String getUploadType() {
            return this.uploadType;
        }

        public boolean isFile() {
            return this.isFile;
        }
    }

    public MyPostEntity() {
        this.URL = "http://appdump.x.netease.com/upload";
        this.params = null;
        this.userDesc = null;
        this.basicInfo = null;
        this.files = null;
        this.callBack = null;
        this.configCallBack = null;
        this.params = new HashMap();
        this.userDesc = new HashMap();
        this.basicInfo = new HashMap();
        this.files = new HashMap();
    }

    public MyPostEntity(MyPostEntity postEntity) {
        this.URL = "http://appdump.x.netease.com/upload";
        this.params = null;
        this.userDesc = null;
        this.basicInfo = null;
        this.files = null;
        this.callBack = null;
        this.configCallBack = null;
        this.params = new HashMap(postEntity.params);
        this.userDesc = new HashMap(postEntity.userDesc);
        this.basicInfo = new HashMap(postEntity.basicInfo);
        this.files = new HashMap(postEntity.files);
        this.URL = postEntity.URL;
        this.callBack = postEntity.getCallBack();
        this.configCallBack = postEntity.getConfigCallBack();
    }

    public void setParam(String key, String value) {
        LogUtils.i("trace", "key=" + key + ", value=" + value);
        if (key != null && value != null) {
            this.params.put(key, value);
            if (this.configCallBack != null) {
                this.configCallBack.configCallBack();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setParam(String key, String value, boolean isWriteToJni) {
        if (key != null && value != null) {
            this.params.put(key, value);
            if (this.configCallBack != null && isWriteToJni) {
                this.configCallBack.configCallBack();
            }
        }
    }

    public void setUserDesc(String key, String value) {
        if (key != null && value != null) {
            this.userDesc.put(key, value);
        }
        LogUtils.i("trace", "setUserDesc key:" + key + "  value:" + value);
    }

    public void setBasicInfo(String key, String value) {
        if (key != null && value != null) {
            this.basicInfo.put(key, value);
        }
        LogUtils.i("trace", "setBasicInfo key:" + key + "  value:" + value);
    }

    public void setFile(File file, String fileName, String uploadType) {
        if (file != null && file.exists() && fileName != null && uploadType != null) {
            this.files.put(fileName, new FileForm(file, uploadType));
        }
    }

    public void setFile(String content, String fileName, String uploadType) {
        if (content != null && fileName != null && uploadType != null) {
            MyFileUtils.getInstance().str2File(content, fileName);
            this.files.put(fileName, new FileForm(content, uploadType));
            if (this.configCallBack != null) {
                this.configCallBack.setFileCallBack(fileName);
            }
        }
    }

    public Map<String, String> getParams() {
        if (this.params == null) {
            this.params = new HashMap();
        }
        return this.params;
    }

    public Map<String, String> getUserDesc() {
        if (this.userDesc == null) {
            this.userDesc = new HashMap();
        }
        return this.userDesc;
    }

    public Map<String, String> getBasicInfo() {
        if (this.basicInfo == null) {
            this.basicInfo = new HashMap();
        }
        return this.basicInfo;
    }

    public Map<String, FileForm> getFiles() {
        if (this.files == null) {
            this.files = new HashMap();
        }
        return this.files;
    }

    public synchronized MyPostCallBack getCallBack() {
        return this.callBack;
    }

    public synchronized void setCallBack(MyPostCallBack callBack) {
        this.callBack = callBack;
    }

    public synchronized MyConfigCallBack getConfigCallBack() {
        return this.configCallBack;
    }

    public synchronized void setConfigCallBack(MyConfigCallBack configCallBack) {
        this.configCallBack = configCallBack;
    }

    public void setURL(String url) {
        this.URL = url;
    }

    public String getURL() {
        return this.URL;
    }

    public String getInfo() {
        StringBuffer result = new StringBuffer();
        result.append("params----").append(this.params.toString()).append("\n");
        result.append("userDesc----").append(this.userDesc.toString()).append("\n");
        result.append("basicInfo----").append(this.basicInfo.toString()).append("\n");
        int index = 1;
        if (this.files != null && this.files.size() > 0) {
            for (String key : this.files.keySet()) {
                result.append("file").append(index).append("----").append(key).append("\n");
                index++;
            }
        }
        return result.toString();
    }

    public void showInfo() {
        if (this.params != null && this.params.size() > 0) {
            LogUtils.i("trace", "[MyPostEntity] params: " + getParams().toString());
        }
        if (this.userDesc != null && this.userDesc.size() > 0) {
            LogUtils.i("trace", "[MyPostEntity] userDesc: " + getUserDesc().toString());
        }
        if (this.basicInfo != null && this.basicInfo.size() > 0) {
            LogUtils.i("trace", "[MyPostEntity] basicInfo: " + getBasicInfo().toString());
        }
        if (this.files != null && this.files.size() > 0) {
            LogUtils.i("trace", "[MyPostEntity] files: " + getFiles().toString());
        }
    }
}
