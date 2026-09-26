package com.netease.pharos;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.alipay.sdk.util.i;
import com.identityv.shrek156.R;
import com.netease.download.UrlSwitcher.HttpdnsUrlSwitcherCore;
import com.netease.download.httpdns2.HttpdnsProxy;
import com.netease.pharos.config.CheckResult;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.deviceinfo.DevicesInfoProxy;
import com.netease.pharos.link.LinkCheckListener;
import com.netease.pharos.link.NetmonProxy;
import com.netease.pharos.linkcheck.LinkCheckProxy;
import com.netease.pharos.linkcheck.LinkCheckResult;
import com.netease.pharos.linkcheck.ScanProxy;
import com.netease.pharos.location.LocationHunter;
import com.netease.pharos.location.NetAreaCore;
import com.netease.pharos.location.RecheckResult;
import com.netease.pharos.qos.HighSpeedListCore;
import com.netease.pharos.qos.QosCore;
import com.netease.pharos.report.ReportProxy;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MainActivity extends Activity implements View.OnClickListener {
    private static final String TAG = "MainActivity";
    private String mProject = "g37na";
    private int mOption = 1;
    private int mDecision = 0;
    private String mIp = "10.160.179.124";
    private String mPort = "9999";
    private String mUrl = null;
    private Context mContext = null;
    private Button tcp_btn = null;
    private Button udp_btn = null;
    private Button kcp_btn = null;
    private Button devices_info_btn = null;
    private Button devices_info_result_btn = null;
    private Button location_info_btn = null;
    private Button check_region_btn = null;
    private Button recheck_region_btn = null;
    private Button recheck_region_result_btn = null;
    private Button report_btn = null;
    private Button region_chech_user_need = null;
    private Button region_config_btn = null;
    private Button check_btn = null;
    private Button linl_check_all_btn = null;
    private Button linl_check_all_result_btn = null;
    private Button all_test_btn = null;
    private Button set_param_btn = null;
    private Button get_cellid_btn = null;
    private Button get_localid_btn = null;
    private Button get_lighten_btn = null;
    private Button httpdns_btn = null;
    private Button qos_btn = null;
    private TextView info_tv = null;
    private TextView region_check_info_tv = null;
    private StringBuffer infoBuf = new StringBuffer();
    private Map<String, String> infoMap = new HashMap();
    private String ip = null;
    private String size = null;
    private String packetLossInfo = null;
    private String pingInfo = null;
    private LinkCheckListener mListener = new LinkCheckListener() { // from class: com.netease.pharos.MainActivity.1
        @Override // com.netease.pharos.link.LinkCheckListener
        public void callBack(CheckResult checkResult) {
            LogUtil.i(MainActivity.TAG, "接入方回调=" + checkResult.toString());
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.drawable.black);
        this.mContext = this;
        findView();
        setListener();
        init();
    }

    private void init() {
        PharosProxy.getInstance().init(this.mContext, "g37na");
        PharosProxy.getInstance().setmOption(1);
        PharosListener listener11 = new PharosListener() { // from class: com.netease.pharos.MainActivity.2
            @Override // com.netease.pharos.PharosListener
            public void onResult(JSONObject data) {
                LogUtil.i(MainActivity.TAG, "接入方回调结果11=" + data.toString());
            }
        };
        PharosProxy.getInstance().setmPharosListener(listener11);
    }

    private void findView() {
        this.tcp_btn = (Button) findViewById(R.layout.crop__activity_crop);
        this.udp_btn = (Button) findViewById(R.layout.crop__layout_done_cancel);
        this.kcp_btn = (Button) findViewById(R.layout.dumpview);
        this.devices_info_btn = (Button) findViewById(R.layout.inputview);
        this.devices_info_result_btn = (Button) findViewById(R.layout.inputview2);
        this.location_info_btn = (Button) findViewById(R.layout.main);
        this.check_region_btn = (Button) findViewById(R.layout.uni_gm_confirm_dialog);
        this.recheck_region_btn = (Button) findViewById(R.layout.uni_gm_float_view);
        this.recheck_region_result_btn = (Button) findViewById(R.layout.uni_gm_web_dialog_landscape);
        this.report_btn = (Button) findViewById(R.layout.uni_gm_web_dialog_portrait);
        this.region_chech_user_need = (Button) findViewById(R.layout.unisdk_protocol_view);
        this.region_config_btn = (Button) findViewById(R.layout.unisdk_webview_progressdialog);
        this.check_btn = (Button) findViewById(R.layout.videoview);
        this.linl_check_all_btn = (Button) findViewById(R.layout.welcomeview);
        this.linl_check_all_result_btn = (Button) findViewById(R.layout.netease_mpay__account_appeal);
        this.all_test_btn = (Button) findViewById(R.layout.netease_mpay__actionbar_activity);
        this.set_param_btn = (Button) findViewById(R.layout.netease_mpay__actionbar);
        this.get_cellid_btn = (Button) findViewById(R.layout.netease_mpay__actionbar_menu_share);
        this.get_localid_btn = (Button) findViewById(R.layout.netease_mpay__appeal_item);
        this.get_lighten_btn = (Button) findViewById(R.layout.netease_mpay__assistant_background);
        this.httpdns_btn = (Button) findViewById(R.layout.netease_mpay__channel_link_pay);
        this.qos_btn = (Button) findViewById(R.layout.netease_mpay__channel_mcard);
        this.region_chech_user_need.setVisibility(8);
        this.info_tv = (TextView) findViewById(R.layout.netease_mpay__channel_option);
        this.info_tv.setMovementMethod(ScrollingMovementMethod.getInstance());
        this.region_check_info_tv = (TextView) findViewById(R.layout.netease_mpay__channel_mcard_denomination);
        this.region_check_info_tv.setMovementMethod(ScrollingMovementMethod.getInstance());
        this.info_tv.setText("mProject=" + this.mProject + ", mOption=" + this.mOption + ", mIp=" + this.mIp + ", mPort=" + this.mPort + ", mDecision=" + this.mDecision);
    }

    private void setListener() {
        this.tcp_btn.setOnClickListener(this);
        this.udp_btn.setOnClickListener(this);
        this.kcp_btn.setOnClickListener(this);
        this.devices_info_btn.setOnClickListener(this);
        this.devices_info_result_btn.setOnClickListener(this);
        this.location_info_btn.setOnClickListener(this);
        this.check_region_btn.setOnClickListener(this);
        this.recheck_region_btn.setOnClickListener(this);
        this.recheck_region_result_btn.setOnClickListener(this);
        this.region_config_btn.setOnClickListener(this);
        this.report_btn.setOnClickListener(this);
        this.region_chech_user_need.setOnClickListener(this);
        this.check_btn.setOnClickListener(this);
        this.linl_check_all_btn.setOnClickListener(this);
        this.linl_check_all_result_btn.setOnClickListener(this);
        this.all_test_btn.setOnClickListener(this);
        this.set_param_btn.setOnClickListener(this);
        this.get_cellid_btn.setOnClickListener(this);
        this.get_localid_btn.setOnClickListener(this);
        this.get_lighten_btn.setOnClickListener(this);
        this.httpdns_btn.setOnClickListener(this);
        this.qos_btn.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case R.layout.crop__activity_crop /* 2130903040 */:
                this.infoBuf.setLength(0);
                new Thread(new Runnable() { // from class: com.netease.pharos.MainActivity.3
                    @Override // java.lang.Runnable
                    public void run() {
                        NetmonProxy.getInstance().addNetmonCore(1, "52.52.108.248", 9001, 10, Const.TIME_OUT, 2048, MainActivity.this.mListener, 0, null, null, null);
                        NetmonProxy.getInstance().start();
                    }
                }).start();
                return;
            case R.layout.crop__layout_done_cancel /* 2130903041 */:
                this.infoBuf.setLength(0);
                new Thread(new Runnable() { // from class: com.netease.pharos.MainActivity.4
                    @Override // java.lang.Runnable
                    public void run() {
                        NetmonProxy.getInstance().addNetmonCore(2, "52.52.108.248", 9001, 10, Const.TIME_OUT, 2048, MainActivity.this.mListener, 0, null, null, null);
                        NetmonProxy.getInstance().start();
                    }
                }).start();
                return;
            case R.layout.dumpview /* 2130903042 */:
                this.infoBuf.setLength(0);
                new Thread(new Runnable() { // from class: com.netease.pharos.MainActivity.5
                    @Override // java.lang.Runnable
                    public void run() {
                        NetmonProxy.getInstance().addNetmonCore(3, Const.UPLOAD_SERVER_IP, Const.KCP_PORT, 10, Const.TIME_OUT, 2048, MainActivity.this.mListener, 0, null, null, null);
                        NetmonProxy.getInstance().start();
                    }
                }).start();
                return;
            case R.layout.inputview /* 2130903043 */:
                new Thread(new Runnable() { // from class: com.netease.pharos.MainActivity.6
                    @Override // java.lang.Runnable
                    public void run() {
                        DevicesInfoProxy.getInstances().init(MainActivity.this.mContext);
                        DevicesInfoProxy.getInstances().start();
                    }
                }).start();
                return;
            case R.layout.inputview2 /* 2130903044 */:
                LogUtil.i(TAG, "设备探测结果=" + DeviceInfo.getInstances().toString());
                return;
            case R.layout.main /* 2130903045 */:
                LogUtil.i(TAG, "区域决策");
                new Thread(new Runnable() { // from class: com.netease.pharos.MainActivity.7
                    @Override // java.lang.Runnable
                    public void run() {
                        NetAreaCore.getInstances().start();
                    }
                }).start();
                return;
            case R.layout.uni_gm_confirm_dialog /* 2130903046 */:
                LogUtil.i(TAG, "初步判断时区");
                LocationHunter locationHunter = new LocationHunter();
                locationHunter.start();
                return;
            case R.layout.uni_gm_float_view /* 2130903047 */:
                LogUtil.i(TAG, "检验地区");
                LocationHunter locationHunter1 = new LocationHunter();
                DeviceInfo result1 = locationHunter1.start();
                LogUtil.i(TAG, "111 result1=" + result1.toString());
                locationHunter1.checkRegion(result1);
                return;
            case R.layout.uni_gm_web_dialog_landscape /* 2130903048 */:
                LogUtil.i(TAG, "检验时区最优结果");
                RecheckResult.getInstance().chooseBest();
                LogUtil.i(TAG, "检验时区最好结果=" + DeviceInfo.getInstances().toString());
                return;
            case R.layout.uni_gm_web_dialog_portrait /* 2130903049 */:
                LogUtil.i(TAG, "上传日志");
                String info = DeviceInfo.getInstances().getTestDeviceInfo(false).toString();
                ReportProxy.getInstance().report(info);
                return;
            case R.layout.unisdk_protocol_view /* 2130903050 */:
                LogUtil.i(TAG, "区域决策接入方获取结果");
                LogUtil.i(TAG, "跑一遍网络监控----区域决策，结果=" + LinkCheckProxy.getInstance().getCallBackInfo());
                StringBuffer info1 = new StringBuffer();
                JSONObject region_check_info = LinkCheckProxy.getInstance().getCallBackInfo();
                String[] infos = region_check_info.toString().split(",");
                info1.append("显示决策数据=").append("\n");
                for (String string : infos) {
                    info1.append(string).append("\n");
                }
                this.region_check_info_tv.setText(info1.toString());
                return;
            case R.layout.unisdk_webview_progressdialog /* 2130903051 */:
                LogUtil.i(TAG, "下载探测配置");
                PharosListener listener = new PharosListener() { // from class: com.netease.pharos.MainActivity.8
                    @Override // com.netease.pharos.PharosListener
                    public void onResult(JSONObject data) {
                        LogUtil.i(MainActivity.TAG, "接入方回调结果11=" + data.toString());
                    }
                };
                PharosProxy.getInstance().setmPharosListener(listener);
                PharosProxy.getInstance().start();
                return;
            case R.layout.videoview /* 2130903052 */:
                LogUtil.i(TAG, "各模块探测");
                ScanProxy.getInstance().start();
                String ScanResult = LinkCheckResult.getInstance().getLinkCheckResultInfo();
                LogUtil.i(TAG, "各模块探测----结果=" + ScanResult);
                return;
            case R.layout.welcomeview /* 2130903053 */:
                LogUtil.i(TAG, "链路探测全流程");
                PharosListener listener1 = new PharosListener() { // from class: com.netease.pharos.MainActivity.9
                    @Override // com.netease.pharos.PharosListener
                    public void onResult(JSONObject data) {
                        LogUtil.i(MainActivity.TAG, "接入方回调结果=" + data.toString());
                    }
                };
                PharosProxy.getInstance().setmPharosListener(listener1);
                LinkCheckProxy.getInstance().start();
                return;
            case R.layout.netease_mpay__account_appeal /* 2130903054 */:
                LogUtil.i(TAG, "链路探测全流程结果");
                LogUtil.i("结果", LinkCheckResult.getInstance().getLinkCheckResultInfo());
                return;
            case R.layout.netease_mpay__actionbar /* 2130903055 */:
                LogUtil.i(TAG, "设置所有参数");
                final EditText projrctEt = new EditText(this);
                projrctEt.setText(String.valueOf(this.mProject) + i.b + this.mOption + i.b + this.mIp + i.b + this.mPort + i.b + this.mUrl + i.b + this.mDecision);
                new AlertDialog.Builder(this).setTitle("设置参数").setView(projrctEt).setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.netease.pharos.MainActivity.10
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        String[] params;
                        String param = projrctEt.getText().toString();
                        LogUtil.i(MainActivity.TAG, "input projectId: " + param);
                        if (!TextUtils.isEmpty(param) && (params = param.split(i.b)) != null && params.length > 5) {
                            MainActivity.this.mProject = params[0];
                            MainActivity.this.mOption = 1;
                            try {
                                MainActivity.this.mOption = Integer.parseInt(params[1]);
                            } catch (Exception e) {
                                LogUtil.i(MainActivity.TAG, "set_param_btn Exception1=" + e);
                            }
                            MainActivity.this.mIp = params[2];
                            MainActivity.this.mPort = params[3];
                            MainActivity.this.mUrl = params[4];
                            try {
                                MainActivity.this.mDecision = Integer.parseInt(params[5]);
                            } catch (Exception e2) {
                                LogUtil.i(MainActivity.TAG, "set_param_btn Exception2=" + e2);
                            }
                        }
                        MainActivity.this.info_tv.setText("mProject=" + MainActivity.this.mProject + ", mOption=" + MainActivity.this.mOption + ", mIp=" + MainActivity.this.mIp + ", mPort=" + MainActivity.this.mPort + ", mUrl=" + MainActivity.this.mUrl + ", mDecision=" + MainActivity.this.mDecision);
                    }
                }).show();
                return;
            case R.layout.netease_mpay__actionbar_activity /* 2130903056 */:
                LogUtil.i(TAG, "跑一遍网络监控");
                PharosProxy.getInstance().init(this.mContext, this.mProject);
                PharosProxy.getInstance().setmOption(this.mOption);
                if (!TextUtils.isEmpty(this.mIp)) {
                    PharosProxy.getInstance().setmIp(this.mIp);
                }
                if (!TextUtils.isEmpty(this.mPort)) {
                    PharosProxy.getInstance().setmPort(this.mPort);
                }
                if (!TextUtils.isEmpty(this.mUrl)) {
                    PharosProxy.getInstance().setmHighSpeedUrl(this.mUrl);
                }
                PharosProxy.getInstance().setmDecision(this.mDecision);
                PharosListener listener11 = new PharosListener() { // from class: com.netease.pharos.MainActivity.11
                    @Override // com.netease.pharos.PharosListener
                    public void onResult(final JSONObject data) {
                        LogUtil.i(MainActivity.TAG, "接入方回调结果11=" + data.toString());
                        MainActivity.this.runOnUiThread(new Runnable() { // from class: com.netease.pharos.MainActivity.11.1
                            @Override // java.lang.Runnable
                            public void run() {
                                StringBuffer info2 = new StringBuffer();
                                String[] infos2 = data.toString().split(",");
                                info2.append("显示最终提交的日志内容=").append("\n");
                                for (String string2 : infos2) {
                                    info2.append(string2).append("\n");
                                }
                                MainActivity.this.info_tv.setText(String.valueOf(info2.toString()) + "\n" + ((Object) MainActivity.this.info_tv.getText()));
                                MainActivity.this.region_chech_user_need.setVisibility(0);
                            }
                        });
                    }
                };
                PharosProxy.getInstance().setmPharosListener(listener11);
                PharosProxy.getInstance().start();
                return;
            case R.layout.netease_mpay__actionbar_menu_share /* 2130903057 */:
                LogUtil.i(TAG, "获取基站id");
                Util.getCellId(this.mContext);
                LogUtil.i(TAG, "获取基站id = " + Util.getCellId(this.mContext));
                return;
            case R.layout.netease_mpay__appeal_item /* 2130903058 */:
                LogUtil.i(TAG, "获取本地ip");
                LogUtil.i(TAG, "获取本地ip = " + Util.getLocalIp(this.mContext));
                return;
            case R.layout.netease_mpay__assistant_background /* 2130903059 */:
                new Thread(new Runnable() { // from class: com.netease.pharos.MainActivity.12
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtil.i(MainActivity.TAG, "获取高速列表");
                        HighSpeedListCore high = new HighSpeedListCore();
                        LogUtil.i(MainActivity.TAG, "获取高速列表  结果 = " + high.start());
                    }
                }).start();
                return;
            case R.layout.netease_mpay__channel_link_pay /* 2130903060 */:
                final String[] mDomains = {"udttest-03.gph.a.163fen.com", "g37na-04.gph.netease.com", "g37na-11.gph.netease.com", "g37na-12.gph.netease.com", "whoami.nie.netease.com", "impression.update.netease.com"};
                LogUtil.i("wuln", "httpdns开始按钮");
                new Thread(new Runnable() { // from class: com.netease.pharos.MainActivity.13
                    @Override // java.lang.Runnable
                    public void run() {
                        HttpdnsProxy.getInstances().synStart("httpdns_test1", mDomains);
                        final HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit unit = HttpdnsProxy.getInstances().getHttpdnsUrlSwitcherCore("httpdns_test1");
                        if (unit != null) {
                            LogUtil.i("wuln", "httpdns结果=" + unit.toString());
                        } else {
                            LogUtil.i("wuln", "httpdns结果为空");
                        }
                        MainActivity.this.runOnUiThread(new Runnable() { // from class: com.netease.pharos.MainActivity.13.1
                            @Override // java.lang.Runnable
                            public void run() {
                                String info2 = unit.toString();
                                String str = "\n\n结果信息：\n" + info2;
                            }
                        });
                    }
                }).start();
                return;
            case R.layout.netease_mpay__channel_mcard /* 2130903061 */:
                LogUtil.i("wuln", "qos加速");
                new Thread(new Runnable() { // from class: com.netease.pharos.MainActivity.14
                    @Override // java.lang.Runnable
                    public void run() {
                        QosCore qosCore = new QosCore();
                        qosCore.init(MainActivity.this.mContext, null);
                        qosCore.parse();
                        try {
                            qosCore.checkIsNeedToQos();
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                }).start();
                return;
            default:
                return;
        }
    }
}
