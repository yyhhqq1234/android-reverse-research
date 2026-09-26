package com.netease.dwrg;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.GLUtils;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.text.format.Formatter;
import android.util.Log;
import com.netease.cloud.nos.android.constants.Constants;
import com.netease.neox.NativeInterface;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class Launcher extends Activity {
    private static final int KITKAT_UI_OPTION = 3846;
    private static final int OTHER_UI_OPTION = 1285;
    public static final int STORAGE_DATA = 2;
    public static final int STORAGE_EXTERNAL = 1;
    public static final int STORAGE_INTERNAL = 0;
    HashMap<String, String> m_asset_filelist;
    private CopyFile m_copy_file;
    private boolean m_is_gl_loaded;
    private Launcher m_launcher;
    private PatchFile m_patch_file;
    private ProgressDialog m_patch_progress_dlg;
    private PlatformConfigParser m_platform_config;
    private ProgressDialog m_progress_dlg;
    private Timer m_timer;
    private GLSurfaceView m_view;
    private float[] m_glclear_color = {1.0f, 1.0f, 1.0f, 1.0f};
    private HashMap<String, AssetInfo> m_asset_to_copy = new HashMap<>();
    private StorageStatus[] m_storage_statuses = new StorageStatus[3];
    private StorageStatus m_current_storage = null;
    private String m_neox_root = null;
    private long m_size_to_copy = 0;
    private int m_real_width = 0;
    private int m_real_height = 0;
    private Boolean m_need_remove_shader_cache = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void runGame() {
        startGame();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == 21320) {
            for (int i : grantResults) {
                if (i != 0) {
                    return;
                }
            }
            recreate();
        }
    }

    private static int getCoreNumber() {
        try {
            File dir = new File("/sys/devices/system/cpu/");
            File[] files = dir.listFiles(new FileFilter() { // from class: com.netease.dwrg.Launcher.1CpuFilter
                @Override // java.io.FileFilter
                public boolean accept(File pathname) {
                    return Pattern.matches("cpu[0-9]", pathname.getName());
                }
            });
            return files.length;
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    private static long getStat(String path) {
        StatFs stat = new StatFs(path);
        long blockSize = stat.getBlockSize();
        long availableBlocks = stat.getAvailableBlocks();
        return availableBlocks * blockSize;
    }

    private static HashMap<String, String> collectFileList(InputStream filelist_txt) throws IOException {
        HashMap<String, String> md5map = new HashMap<>();
        BufferedReader reader = new BufferedReader(new InputStreamReader(filelist_txt));
        while (true) {
            String line = reader.readLine();
            if (line != null) {
                String[] parts = line.split("\t");
                String fpath = parts[0].replaceAll("\\\\", "/");
                md5map.put(fpath, parts[parts.length - 1]);
            } else {
                return md5map;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class AssetInfo {
        public String MD5;
        public String Path;
        public long Size;

        public AssetInfo(String p, String md5, long size) {
            this.Path = p;
            this.MD5 = md5;
            this.Size = size;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getStringId(String name) {
        int id = getResources().getIdentifier(name, ResIdReader.RES_TYPE_STRING, getPackageName());
        return id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDrawableId(String name) {
        int id = getResources().getIdentifier(name, ResIdReader.RES_TYPE_DRAWABLE, getPackageName());
        return id;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class StorageStatus {
        public long AvailableSize = 0;
        public String Path;
        public int Type;
        public String UIString;
        private Launcher m_context;

        public StorageStatus(Launcher context, int storage_type) {
            this.m_context = context;
            this.Type = storage_type;
            switch (storage_type) {
                case 0:
                    this.UIString = this.m_context.getString(this.m_context.getStringId("neox_launcher_internal_sd"));
                    return;
                case 1:
                    this.UIString = this.m_context.getString(this.m_context.getStringId("neox_launcher_external_sd"));
                    return;
                case 2:
                    this.UIString = this.m_context.getString(this.m_context.getStringId("neox_launcher_data_sd"));
                    return;
                default:
                    this.UIString = null;
                    return;
            }
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT >= 23 && (checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0 || checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0 || checkSelfPermission("android.permission.READ_PHONE_STATE") != 0)) {
            requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE"}, 21320);
            return;
        }
        if ((getIntent().getFlags() & Constants.MAX_CHUNK_SIZE) != 0) {
            finish();
            return;
        }
        this.m_progress_dlg = new ProgressDialog(this);
        this.m_progress_dlg.setIndeterminate(false);
        this.m_progress_dlg.setCanceledOnTouchOutside(false);
        this.m_progress_dlg.setCancelable(false);
        this.m_progress_dlg.setProgressStyle(1);
        this.m_progress_dlg.setMax(100);
        this.m_progress_dlg.setTitle(getStringId("neox_launcher_copy_data"));
        this.m_progress_dlg.setIcon(getDrawableId("ic_launcher"));
        this.m_progress_dlg.getWindow().setFlags(8, 8);
        this.m_progress_dlg.getWindow().addFlags(131200);
        int core_num = getCoreNumber();
        this.m_platform_config = new PlatformConfigParser(this);
        this.m_platform_config.addVariable("SDK_INT", Build.VERSION.SDK_INT);
        this.m_platform_config.addVariable("CORE_NUM", core_num);
        this.m_platform_config.addVariable("MODEL", Build.MODEL);
        this.m_platform_config.addVariable("MANUFACTURER", Build.MANUFACTURER);
        Log.i("NeoX", "SDK_INT is " + Build.VERSION.SDK_INT);
        Log.i("NeoX", "RELEASE is " + Build.VERSION.RELEASE);
        Log.i("NeoX", "CORE_NUM is " + core_num);
        Log.i("NeoX", "MODEL is " + Build.MODEL);
        Log.i("NeoX", "MANUFACTURER is " + Build.MANUFACTURER);
        this.m_is_gl_loaded = false;
        this.m_view = new GLSurfaceView(this);
        if (Build.VERSION.SDK_INT >= 14) {
            if (Build.VERSION.SDK_INT >= 19) {
                this.m_view.setSystemUiVisibility(KITKAT_UI_OPTION);
            } else {
                this.m_view.setSystemUiVisibility(OTHER_UI_OPTION);
            }
        }
        this.m_launcher = this;
        this.m_view.setEGLContextClientVersion(2);
        this.m_view.setRenderer(new GLSurfaceView.Renderer() { // from class: com.netease.dwrg.Launcher.1
            private int m_bg_sampler;
            private int m_pos_attrib;
            private int m_program;
            private int m_texture;
            private int m_uv_attrib;
            private FloatBuffer m_uv_buffer;
            private float[] VERTICE = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
            private final float[] UVS = {0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
            private final String m_vs_code = "attribute vec4 pos;\nattribute vec4 uv_in;\nvarying vec2 uv_out;\nvoid main()\n{\n\tgl_Position = pos;\n\tuv_out = uv_in.xy;\n}\n";
            private final String m_ps_code = "varying highp vec2 uv_out;\nuniform sampler2D bg;\nvoid main()\n{\n\tgl_FragColor = texture2D(bg, uv_out);\n}\n";
            private FloatBuffer m_pos_buffer = null;

            public int loadShader(int type, String shaderCode) {
                int shader = GLES20.glCreateShader(type);
                GLES20.glShaderSource(shader, shaderCode);
                GLES20.glCompileShader(shader);
                return shader;
            }

            @Override // android.opengl.GLSurfaceView.Renderer
            public void onSurfaceCreated(GL10 gl, EGLConfig config) {
                final String renderer = GLES20.glGetString(7937);
                final String vendor = GLES20.glGetString(7936);
                final String extensions = GLES20.glGetString(7939);
                String _version = GLES20.glGetString(7938);
                final String version = _version == null ? "null" : _version;
                Launcher.this.m_launcher.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.Launcher.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!Launcher.this.m_launcher.m_is_gl_loaded) {
                            Launcher.this.m_launcher.m_is_gl_loaded = true;
                            Launcher.this.m_launcher.m_platform_config.addVariable("GL_RENDERER", renderer);
                            Launcher.this.m_launcher.m_platform_config.addVariable("GL_VENDOR", vendor);
                            Launcher.this.m_launcher.m_platform_config.addVariable("GL_VERSION", version);
                            Launcher.this.m_launcher.m_platform_config.addVariable("GL_EXTENSIONS", extensions);
                            Launcher.this.m_launcher.launch();
                        }
                    }
                });
                int vs = loadShader(35633, "attribute vec4 pos;\nattribute vec4 uv_in;\nvarying vec2 uv_out;\nvoid main()\n{\n\tgl_Position = pos;\n\tuv_out = uv_in.xy;\n}\n");
                int ps = loadShader(35632, "varying highp vec2 uv_out;\nuniform sampler2D bg;\nvoid main()\n{\n\tgl_FragColor = texture2D(bg, uv_out);\n}\n");
                this.m_program = GLES20.glCreateProgram();
                GLES20.glAttachShader(this.m_program, vs);
                GLES20.glAttachShader(this.m_program, ps);
                GLES20.glLinkProgram(this.m_program);
                this.m_pos_attrib = GLES20.glGetAttribLocation(this.m_program, "pos");
                this.m_uv_attrib = GLES20.glGetAttribLocation(this.m_program, "uv_in");
                this.m_bg_sampler = GLES20.glGetUniformLocation(this.m_program, "bg");
                this.m_pos_buffer = null;
                ByteBuffer bb = ByteBuffer.allocateDirect(this.UVS.length * 4);
                bb.order(ByteOrder.nativeOrder());
                this.m_uv_buffer = bb.asFloatBuffer();
                this.m_uv_buffer.put(this.UVS);
                this.m_uv_buffer.position(0);
                int[] textureHandle = new int[1];
                GLES20.glGenTextures(1, textureHandle, 0);
                this.m_texture = textureHandle[0];
                GLES20.glBindTexture(3553, this.m_texture);
                GLES20.glTexParameteri(3553, 10241, 9729);
                GLES20.glTexParameteri(3553, 10240, 9729);
                GLES20.glTexParameteri(3553, 10242, 33071);
                GLES20.glTexParameteri(3553, 10243, 33071);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = false;
                Bitmap bmp = BitmapFactory.decodeResource(Launcher.this.m_launcher.getResources(), Launcher.this.m_launcher.getDrawableId("init"), options);
                GLUtils.texImage2D(3553, 0, bmp, 0);
                bmp.recycle();
                GLES20.glEnable(3042);
                GLES20.glBlendFunc(770, 771);
            }

            @Override // android.opengl.GLSurfaceView.Renderer
            public void onSurfaceChanged(GL10 gl, int width, int height) {
                Launcher.this.m_launcher.m_real_width = width;
                Launcher.this.m_launcher.m_real_height = height;
                gl.glViewport(0, 0, width, height);
                if (width > height) {
                    float logo_h = ((width * 1.109375f) * 353.0f) / (height * 1065);
                    float logo_y = ((365.0f * (2.0f - logo_h)) / 725.0f) - 1.0f;
                    this.VERTICE = new float[]{-0.6f, logo_y, (-0.6f) + 1.109375f, logo_y, -0.6f, logo_y + logo_h, (-0.6f) + 1.109375f, logo_y + logo_h};
                } else {
                    float logo_h2 = ((width * 1.425926f) * 252.0f) / (height * 770);
                    float logo_y2 = ((972.0f * (2.0f - logo_h2)) / 1668.0f) - 1.0f;
                    this.VERTICE = new float[]{-0.73888886f, logo_y2, (-0.73888886f) + 1.425926f, logo_y2, -0.73888886f, logo_y2 + logo_h2, (-0.73888886f) + 1.425926f, logo_y2 + logo_h2};
                }
                ByteBuffer bb = ByteBuffer.allocateDirect(this.VERTICE.length * 4);
                bb.order(ByteOrder.nativeOrder());
                this.m_pos_buffer = bb.asFloatBuffer();
                this.m_pos_buffer.put(this.VERTICE);
                this.m_pos_buffer.position(0);
            }

            @Override // android.opengl.GLSurfaceView.Renderer
            public void onDrawFrame(GL10 gl) {
                GLES20.glClearColor(Launcher.this.m_glclear_color[0], Launcher.this.m_glclear_color[1], Launcher.this.m_glclear_color[2], Launcher.this.m_glclear_color[3]);
                GLES20.glClear(16384);
                if (this.m_pos_buffer != null) {
                    GLES20.glUseProgram(this.m_program);
                    GLES20.glEnableVertexAttribArray(this.m_pos_attrib);
                    GLES20.glEnableVertexAttribArray(this.m_uv_attrib);
                    GLES20.glVertexAttribPointer(this.m_pos_attrib, 2, 5126, false, 0, (Buffer) this.m_pos_buffer);
                    GLES20.glVertexAttribPointer(this.m_uv_attrib, 2, 5126, false, 0, (Buffer) this.m_uv_buffer);
                    GLES20.glActiveTexture(33984);
                    GLES20.glBindTexture(3553, this.m_texture);
                    GLES20.glUniform1i(this.m_bg_sampler, 0);
                    GLES20.glDrawArrays(5, 0, 4);
                }
            }
        });
        setContentView(this.m_view);
        getWindow().setFlags(128, 128);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    void initStorageStatus() {
        for (int i = 0; i < this.m_storage_statuses.length; i++) {
            this.m_storage_statuses[i] = new StorageStatus(this, i);
        }
        StorageManager sm = (StorageManager) getSystemService("storage");
        Method method_getVolumePaths = null;
        Method method_getVolumeState = null;
        try {
            method_getVolumePaths = sm.getClass().getMethod("getVolumePaths", new Class[0]);
            method_getVolumeState = sm.getClass().getMethod("getVolumeState", String.class);
        } catch (NoSuchMethodException e) {
        }
        if (method_getVolumePaths != null && method_getVolumeState != null) {
            try {
                String[] paths = (String[]) method_getVolumePaths.invoke(sm, new Object[0]);
                for (int i2 = 0; i2 < paths.length; i2++) {
                    String status = (String) method_getVolumeState.invoke(sm, paths[i2]);
                    if (status.equals("mounted")) {
                        long size = getStat(paths[i2]);
                        if (i2 == 0) {
                            this.m_storage_statuses[0].Path = paths[i2];
                            this.m_storage_statuses[0].AvailableSize = size;
                        } else if (this.m_storage_statuses[1].AvailableSize == 0) {
                            this.m_storage_statuses[1].Path = paths[i2];
                            this.m_storage_statuses[1].AvailableSize = size;
                        }
                    }
                }
            } catch (IllegalAccessException ex) {
                ex.printStackTrace();
            } catch (IllegalArgumentException ex2) {
                ex2.printStackTrace();
            } catch (InvocationTargetException ex3) {
                ex3.printStackTrace();
            }
        }
        if (this.m_storage_statuses[0].AvailableSize == 0 && this.m_storage_statuses[1].AvailableSize == 0 && Environment.getExternalStorageState().equals("mounted")) {
            this.m_storage_statuses[0].Path = Environment.getExternalStorageDirectory().getPath();
            this.m_storage_statuses[0].AvailableSize = getStat(this.m_storage_statuses[0].Path);
        }
        if (this.m_storage_statuses[0].AvailableSize > 0 && getApplicationContext() != null && getApplicationContext().getExternalFilesDir(null) != null) {
            this.m_storage_statuses[0].Path = getApplicationContext().getExternalFilesDir(null).getPath();
        }
        this.m_storage_statuses[2].Path = getApplicationContext().getFilesDir().getPath();
        this.m_storage_statuses[2].AvailableSize = getStat(this.m_storage_statuses[2].Path);
        SharedPreferences neox_config = getSharedPreferences("neox_config", 0);
        int storage_type = neox_config.getInt("Storage", 0);
        if (this.m_storage_statuses[storage_type].AvailableSize > 0) {
            this.m_current_storage = this.m_storage_statuses[storage_type];
            return;
        }
        for (int i3 = 0; i3 < 3; i3++) {
            if (this.m_storage_statuses[i3].AvailableSize > 0) {
                this.m_current_storage = this.m_storage_statuses[i3];
                return;
            }
        }
    }

    void savePreference() {
        SharedPreferences neox_config = getSharedPreferences("neox_config", 0);
        SharedPreferences.Editor editor = neox_config.edit().putInt("Storage", this.m_current_storage.Type).putString("NeoXRoot", this.m_neox_root);
        String device_release_version_value = neox_config.getString("DEVICE_RELEASE", "");
        Log.i("NeoX", "current            device_release_version_value is " + Build.VERSION.RELEASE);
        Log.i("NeoX", "save in preference device_release_version_value is " + device_release_version_value);
        if (!"".equals(device_release_version_value)) {
            if (device_release_version_value.equals(Build.VERSION.RELEASE)) {
                this.m_need_remove_shader_cache = false;
            } else {
                this.m_need_remove_shader_cache = true;
            }
        }
        editor.putString("DEVICE_RELEASE", Build.VERSION.RELEASE);
        editor.putBoolean("need_remove_shader_cache", this.m_need_remove_shader_cache.booleanValue());
        if (this.m_real_width != 0 && this.m_real_height != 0) {
            editor = editor.putInt("RealWidth", this.m_real_width).putInt("RealHeight", this.m_real_height);
        }
        HashMap<String, Boolean> options = this.m_platform_config.getOptions();
        for (Map.Entry<String, Boolean> entry : options.entrySet()) {
            editor = editor.putBoolean(entry.getKey(), entry.getValue().booleanValue());
        }
        editor.commit();
    }

    void startGame() {
        if (this.m_timer != null) {
            this.m_timer.cancel();
        }
        if (this.m_progress_dlg != null) {
            this.m_progress_dlg.dismiss();
        }
        savePreference();
        Intent clientIntent = new Intent(this.m_launcher, (Class<?>) Client.class);
        clientIntent.setFlags(268435456);
        this.m_launcher.startActivity(clientIntent);
        finish();
    }

    void updateCopyingFile(String path) {
        String t = getResources().getString(getStringId("neox_launcher_copying"));
        this.m_progress_dlg.setTitle(t);
    }

    void updateCopiedSize(long copiedSize) {
        int percent = (int) ((100 * copiedSize) / this.m_size_to_copy);
        this.m_progress_dlg.setProgress(percent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus && Build.VERSION.SDK_INT >= 14) {
            if (Build.VERSION.SDK_INT >= 19) {
                this.m_view.setSystemUiVisibility(KITKAT_UI_OPTION);
            } else {
                this.m_view.setSystemUiVisibility(OTHER_UI_OPTION);
            }
        }
    }

    long calcAssetToCopy(String neox_root) {
        long size;
        this.m_asset_to_copy.clear();
        HashMap<String, String> dest_filelist_txt = null;
        if (neox_root != null) {
            try {
                dest_filelist_txt = collectFileList(new FileInputStream(new File(neox_root, "filelist.txt")));
            } catch (IOException e) {
                dest_filelist_txt = null;
            }
        }
        if (dest_filelist_txt == null) {
            dest_filelist_txt = new HashMap<>();
        }
        long total_size = 0;
        AssetManager am = getAssets();
        for (String key : this.m_asset_filelist.keySet()) {
            String srcmd5 = this.m_asset_filelist.get(key);
            String dstmd5 = dest_filelist_txt.get(key);
            if (!srcmd5.equals(dstmd5) || !new File(neox_root, key).exists()) {
                try {
                    AssetFileDescriptor fd = am.openFd(key);
                    size = fd.getLength();
                    fd.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                    size = 0;
                }
                if (size == 0 || size == -1) {
                    try {
                        InputStream inputStream = am.open(key);
                        size = inputStream.available();
                        inputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        size = 0;
                    }
                }
                this.m_asset_to_copy.put(key, new AssetInfo(key, srcmd5, size));
                total_size += size;
            }
        }
        return total_size;
    }

    boolean determineStorage() {
        initStorageStatus();
        try {
            AssetManager am = getAssets();
            InputStream filelist_txt = am.open("filelist.txt");
            this.m_asset_filelist = collectFileList(filelist_txt);
        } catch (IOException e) {
            this.m_asset_filelist = new HashMap<>();
        }
        SharedPreferences neox_config = getSharedPreferences("neox_config", 0);
        this.m_neox_root = neox_config.getString("NeoXRoot", null);
        if (this.m_neox_root == null) {
            this.m_size_to_copy = calcAssetToCopy(null);
            this.m_current_storage = null;
            StorageStatus[] storageStatusArr = this.m_storage_statuses;
            int length = storageStatusArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                StorageStatus ss = storageStatusArr[i];
                if (this.m_size_to_copy + 1048576 >= ss.AvailableSize) {
                    i++;
                } else {
                    this.m_current_storage = ss;
                    break;
                }
            }
            if (this.m_current_storage == null) {
                return false;
            }
            this.m_neox_root = getResources().getString(getStringId("neox_root"));
            if (this.m_neox_root.startsWith("/sdcard/")) {
                this.m_neox_root = this.m_neox_root.substring(7);
            }
            this.m_neox_root = this.m_current_storage.Path + this.m_neox_root;
            removeOldApp();
            return true;
        }
        removeOldApp();
        this.m_current_storage = this.m_storage_statuses[neox_config.getInt("Storage", 0)];
        this.m_size_to_copy = calcAssetToCopy(this.m_neox_root);
        if (this.m_size_to_copy + 1048576 > this.m_current_storage.AvailableSize) {
            return false;
        }
        return true;
    }

    void launch() {
        String text;
        InputStream inputstream;
        if (determineStorage()) {
            File neoxDir = new File(this.m_neox_root);
            if (!neoxDir.exists()) {
                neoxDir.mkdirs();
            } else {
                if (!neoxDir.isDirectory()) {
                    Log.e("NeoXDevice", this.m_neox_root + " must be a directory!");
                    finish();
                    return;
                }
                File[] dumpFiles = neoxDir.listFiles(new FilenameFilter() { // from class: com.netease.dwrg.Launcher.2
                    @Override // java.io.FilenameFilter
                    public boolean accept(File arg0, String arg1) {
                        return arg1.endsWith(".dmp");
                    }
                });
                for (File dumpFile : dumpFiles) {
                    dumpFile.delete();
                }
            }
            try {
                String platformConfigFilePath = this.m_neox_root + "/Documents/PlatformConfig.xml";
                File platformConfigInDocument = new File(platformConfigFilePath);
                if (platformConfigInDocument.exists()) {
                    InputStream inputstream2 = new BufferedInputStream(new FileInputStream(platformConfigInDocument));
                    inputstream = inputstream2;
                } else {
                    inputstream = getAssets().open("PlatformConfig.xml");
                }
                if (inputstream != null) {
                    this.m_platform_config.parse(inputstream);
                }
                inputstream.close();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
            if (this.m_size_to_copy > 0) {
                this.m_progress_dlg.setProgress(0);
                this.m_progress_dlg.show();
                this.m_copy_file = new CopyFile();
                Thread thread = new Thread(this.m_copy_file);
                thread.start();
                if (this.m_timer != null) {
                    this.m_timer.cancel();
                }
                this.m_timer = new Timer();
                this.m_timer.scheduleAtFixedRate(new TimerTask() { // from class: com.netease.dwrg.Launcher.3
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        Handler handler = new UpdateHandler(Looper.getMainLooper());
                        handler.sendEmptyMessage(1);
                    }
                }, 1L, 60L);
                return;
            }
            this.m_launcher.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.Launcher.4
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.m_launcher.runGame();
                }
            });
            return;
        }
        String text2 = getResources().getString(getStringId("neox_launcher_asset_size_to_copy")) + " " + Formatter.formatFileSize(this, this.m_size_to_copy) + "\n";
        if (this.m_current_storage == null) {
            text = text2 + getResources().getString(getStringId("neox_launcher_no_enough_space"));
        } else {
            text = text2 + this.m_current_storage.UIString + " " + Formatter.formatFileSize(this, this.m_current_storage.AvailableSize);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this).setMessage(text).setIcon(getDrawableId("ic_launcher"));
        builder.setPositiveButton(getStringId("neox_cancel"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Launcher.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                Launcher.this.m_launcher.finish();
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class CopyFile implements Runnable {
        private static final int BUFFER_SIZE = 262144;
        private long m_copied_size = 0;
        private String m_copying_file = null;
        private byte[] m_buffer = new byte[262144];

        CopyFile() {
        }

        public long getCopiedSize() {
            return this.m_copied_size;
        }

        public String getCopyingFile() {
            return this.m_copying_file;
        }

        private void copyAsset(String path, long fileSize) {
            AssetManager assetManager = Launcher.this.m_launcher.getAssets();
            long last_copied_size = this.m_copied_size;
            try {
                InputStream inputStream = assetManager.open(path);
                File outfile = new File(Launcher.this.m_neox_root, path);
                if (!outfile.exists()) {
                    File parent = outfile.getParentFile();
                    if (parent != null && !parent.exists()) {
                        parent.mkdirs();
                    }
                    outfile.createNewFile();
                }
                FileOutputStream outputstream = new FileOutputStream(outfile);
                while (true) {
                    int length = inputStream.read(this.m_buffer);
                    if (length > 0) {
                        outputstream.write(this.m_buffer, 0, length);
                        this.m_copied_size += length;
                    } else {
                        outputstream.flush();
                        outputstream.close();
                        inputStream.close();
                        return;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                this.m_copied_size = last_copied_size + fileSize;
                Log.e("NeoXDevice", "Failed to copy asset file " + path);
            }
        }

        private void copyInitPng() {
            File outFile = new File(Launcher.this.m_neox_root, "init.bm");
            if (!outFile.exists()) {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = false;
                Bitmap bmp = BitmapFactory.decodeResource(Launcher.this.m_launcher.getResources(), Launcher.this.m_launcher.getDrawableId("init"), options);
                ByteBuffer bb = ByteBuffer.allocate((bmp.getWidth() * bmp.getHeight() * 4) + 8 + 16);
                bb.order(ByteOrder.LITTLE_ENDIAN);
                bb.putInt(bmp.getWidth());
                bb.putInt(bmp.getHeight());
                for (int j = 0; j < bmp.getHeight(); j++) {
                    for (int i = 0; i < bmp.getWidth(); i++) {
                        int color = bmp.getPixel(i, j);
                        int a = Color.alpha(color);
                        int r = Color.red(color);
                        int g = Color.green(color);
                        int b = Color.blue(color);
                        bb.putInt(Color.argb(a, b, g, r));
                    }
                }
                bb.putFloat(Launcher.this.m_glclear_color[0]);
                bb.putFloat(Launcher.this.m_glclear_color[1]);
                bb.putFloat(Launcher.this.m_glclear_color[2]);
                bb.putFloat(Launcher.this.m_glclear_color[3]);
                try {
                    outFile.createNewFile();
                    FileOutputStream outStream = new FileOutputStream(outFile);
                    outStream.write(bb.array());
                    outStream.flush();
                    outStream.close();
                } catch (Exception e) {
                } finally {
                    bmp.recycle();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.m_copied_size = 0L;
            this.m_copying_file = null;
            for (Map.Entry<String, AssetInfo> entry : Launcher.this.m_asset_to_copy.entrySet()) {
                this.m_copying_file = entry.getValue().Path;
                copyAsset(this.m_copying_file, entry.getValue().Size);
            }
            copyAsset("filelist.txt", 0L);
            copyInitPng();
            Launcher.this.m_launcher.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.Launcher.CopyFile.1
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.m_launcher.runGame();
                }
            });
        }
    }

    /* loaded from: classes.dex */
    class UpdateHandler extends Handler {
        public UpdateHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (Launcher.this.m_progress_dlg != null && Launcher.this.m_copy_file != null) {
                String title = Launcher.this.m_launcher.getResources().getString(Launcher.this.getStringId("neox_launcher_copy_data"));
                String copyingFile = Launcher.this.m_copy_file.getCopyingFile();
                long copiedSize = Launcher.this.m_copy_file.getCopiedSize();
                if (copyingFile != null) {
                    title = Launcher.this.m_launcher.getResources().getString(Launcher.this.getStringId("neox_launcher_copying"));
                }
                int progress = 100;
                if (Launcher.this.m_size_to_copy > 0) {
                    progress = (int) ((100 * copiedSize) / Launcher.this.m_size_to_copy);
                }
                Launcher.this.m_progress_dlg.setTitle(title);
                Launcher.this.m_progress_dlg.setProgress(progress);
            }
        }
    }

    void preparePatch() {
        if (this.m_timer != null) {
            this.m_timer.cancel();
        }
        if (this.m_progress_dlg != null) {
            this.m_progress_dlg.dismiss();
        }
        savePreference();
        this.m_patch_progress_dlg = new ProgressDialog(this);
        this.m_patch_progress_dlg.setIndeterminate(false);
        this.m_patch_progress_dlg.setCanceledOnTouchOutside(false);
        this.m_patch_progress_dlg.setCancelable(false);
        this.m_patch_progress_dlg.setProgressStyle(1);
        this.m_patch_progress_dlg.setIcon(getDrawableId("ic_launcher"));
        this.m_patch_progress_dlg.getWindow().setFlags(8, 8);
        this.m_patch_progress_dlg.getWindow().addFlags(131200);
        this.m_patch_progress_dlg.setTitle(getStringId("neox_launcher_check_update"));
        this.m_patch_progress_dlg.setProgress(0);
        this.m_patch_progress_dlg.setMax(100);
        this.m_patch_progress_dlg.show();
        System.loadLibrary("fmodex");
        System.loadLibrary("fmodevent");
        System.loadLibrary("client");
        AsyncTask task = new AsyncTask<Void, Void, Void>() { // from class: com.netease.dwrg.Launcher.6
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... params) {
                NativeInterface.NativePreparePatch(Launcher.this.m_neox_root);
                return null;
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Void result) {
                int patch_status = NativeInterface.NativePatchGetPatchStatus();
                if (patch_status != 0) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(Launcher.this.m_launcher).setIcon(Launcher.this.getDrawableId("ic_launcher"));
                    if (patch_status == -2) {
                        builder.setMessage(Launcher.this.getStringId("neox_launcher_failure_engine"));
                    } else {
                        builder.setMessage(Launcher.this.getStringId("neox_launcher_failure_checkupdate"));
                    }
                    builder.setPositiveButton(Launcher.this.getStringId("neox_confirm"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Launcher.6.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int which) {
                            Launcher.this.m_launcher.finish();
                        }
                    });
                    builder.create().show();
                    return;
                }
                Launcher.this.m_launcher.startPatch();
            }
        };
        task.execute((Object[]) null);
    }

    void startPatch() {
        int network_type = getNetworkType();
        if (network_type == 1 || NativeInterface.NativePatchGetTotalSize() == 0) {
            this.m_launcher.patching();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this).setTitle(getStringId("neox_launcher_warn"));
        builder.setMessage(getStringId("neox_launcher_not_wifi")).setIcon(getDrawableId("ic_launcher"));
        builder.setNegativeButton(getStringId("neox_launcher_continue"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Launcher.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                Launcher.this.m_launcher.patching();
            }
        });
        builder.setPositiveButton(getStringId("neox_launcher_stop"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Launcher.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                Launcher.this.m_launcher.finish();
            }
        });
        builder.create().show();
    }

    void patching() {
        this.m_patch_progress_dlg.show();
        this.m_patch_progress_dlg.setTitle(getStringId("neox_launcher_updating"));
        this.m_patch_progress_dlg.setMax(NativeInterface.NativePatchGetTotalSize());
        this.m_patch_progress_dlg.setProgress(0);
        this.m_patch_progress_dlg.setProgressNumberFormat("%2d/%2dKB");
        this.m_patch_file = new PatchFile();
        Thread thread = new Thread(this.m_patch_file);
        thread.start();
        this.m_timer = new Timer();
        this.m_timer.scheduleAtFixedRate(new TimerTask() { // from class: com.netease.dwrg.Launcher.9
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Handler handler = new PatchHandler(Looper.getMainLooper());
                handler.sendEmptyMessage(1);
            }
        }, 1L, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class PatchFile implements Runnable {
        private int m_patch_status;

        PatchFile() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NativeInterface.NativeStartPatch(Launcher.this.m_neox_root);
            this.m_patch_status = NativeInterface.NativePatchGetPatchStatus();
            Launcher.this.m_launcher.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.Launcher.PatchFile.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Launcher.this.m_timer != null) {
                        Launcher.this.m_timer.cancel();
                    }
                    if (Launcher.this.m_patch_progress_dlg != null) {
                        Launcher.this.m_patch_progress_dlg.dismiss();
                    }
                    if (PatchFile.this.m_patch_status != 0) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(Launcher.this.m_launcher).setIcon(Launcher.this.getDrawableId("ic_launcher"));
                        if (PatchFile.this.m_patch_status == -2) {
                            builder.setMessage(Launcher.this.getStringId("neox_launcher_failure_engine"));
                        } else {
                            builder.setMessage(Launcher.this.getStringId("neox_launcher_failure"));
                        }
                        builder.setPositiveButton(Launcher.this.getStringId("neox_confirm"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Launcher.PatchFile.1.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialog, int which) {
                                Launcher.this.m_launcher.finish();
                            }
                        });
                        builder.create().show();
                        return;
                    }
                    Intent clientIntent = new Intent(Launcher.this.m_launcher, (Class<?>) Client.class);
                    Launcher.this.m_launcher.startActivity(clientIntent);
                    Launcher.this.finish();
                }
            });
        }
    }

    /* loaded from: classes.dex */
    class PatchHandler extends Handler {
        public PatchHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (Launcher.this.m_patch_progress_dlg != null) {
                Launcher.this.m_patch_progress_dlg.setTitle(Launcher.this.getStringId("neox_launcher_updating"));
                int total_size = NativeInterface.NativePatchGetTotalSize() + 1;
                int downloaded_size = NativeInterface.NativePatchGetDownloadedSize();
                if (total_size > 20000) {
                    Launcher.this.m_patch_progress_dlg.setProgressNumberFormat("%4d/%4dMB");
                    Launcher.this.m_patch_progress_dlg.setMax(total_size / 1000);
                    Launcher.this.m_patch_progress_dlg.setProgress(downloaded_size / 1000);
                } else {
                    Launcher.this.m_patch_progress_dlg.setProgressNumberFormat("%4d/%4dKB");
                    Launcher.this.m_patch_progress_dlg.setMax(total_size);
                    Launcher.this.m_patch_progress_dlg.setProgress(downloaded_size);
                }
            }
        }
    }

    private int getNetworkType() {
        ConnectivityManager connectMgr = (ConnectivityManager) getSystemService("connectivity");
        NetworkInfo info = connectMgr.getActiveNetworkInfo();
        if (info != null) {
            return info.getType();
        }
        return -1;
    }

    private void removeOldApp() {
        InputStream inputstream = null;
        UserDataParser parser = new UserDataParser();
        try {
            inputstream = getAssets().open("user_data.xml");
        } catch (IOException e) {
            Log.e("NeoXDevice", "Counld not find user_data.xml in assets");
            e.printStackTrace();
        }
        if (inputstream != null) {
            parser.parse(inputstream);
            if (!parser.hasTimestamp()) {
                Log.e("NeoXDevice", "could not find timestamp in asset user_data.xml");
                return;
            }
            String asset_timestamp = parser.getTimestamp();
            Log.e("NeoXDevice", "asset timestamp:" + asset_timestamp);
            InputStream file_inputstream = null;
            try {
                InputStream file_inputstream2 = new FileInputStream(new File(this.m_neox_root, "user_data.xml"));
                file_inputstream = file_inputstream2;
            } catch (IOException e2) {
                Log.e("NeoXDevice", "Counld not find user_data.xml in filesystem");
                e2.printStackTrace();
            }
            String file_timestamp = "";
            if (file_inputstream != null) {
                UserDataParser file_parser = new UserDataParser();
                file_parser.parse(file_inputstream);
                if (file_parser.hasTimestamp()) {
                    file_timestamp = file_parser.getTimestamp();
                }
            }
            Log.e("NeoXDevice", "file timestamp:" + file_timestamp);
            if (!asset_timestamp.equals(file_timestamp)) {
                removeDirectory(this.m_neox_root);
            }
        }
    }

    public static boolean removeDirectory(String delpath) {
        try {
            File file = new File(delpath);
            if (!file.isDirectory()) {
                file.delete();
                return true;
            }
            if (file.isDirectory()) {
                File[] filelist = file.listFiles();
                for (File delfile : filelist) {
                    if (!delfile.isDirectory()) {
                        delfile.delete();
                    } else if (delfile.isDirectory()) {
                        removeDirectory(delfile.getAbsolutePath());
                    }
                }
                file.delete();
                return true;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }
}
