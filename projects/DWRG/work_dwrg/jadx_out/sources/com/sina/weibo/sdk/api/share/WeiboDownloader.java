package com.sina.weibo.sdk.api.share;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.utils.Utility;

/* loaded from: classes.dex */
public class WeiboDownloader {
    private static final String CANCEL_CHINESS = "以后再说";
    private static final String CANCEL_ENGLISH = "Download Later";
    private static final String OK_CHINESS = "现在下载";
    private static final String OK_ENGLISH = "Download Now";
    private static final String PROMPT_CHINESS = "未安装微博客户端，是否现在去下载？";
    private static final String PROMPT_ENGLISH = "Sina Weibo client is not installed, download now?";
    private static final String TITLE_CHINESS = "提示";
    private static final String TITLE_ENGLISH = "Notice";

    public static Dialog createDownloadConfirmDialog(final Context context, final IWeiboDownloadListener listener) {
        String title = TITLE_CHINESS;
        String prompt = PROMPT_CHINESS;
        String ok = OK_CHINESS;
        String cancel = CANCEL_CHINESS;
        if (!Utility.isChineseLocale(context.getApplicationContext())) {
            title = TITLE_ENGLISH;
            prompt = PROMPT_ENGLISH;
            ok = OK_ENGLISH;
            cancel = CANCEL_ENGLISH;
        }
        Dialog dialog = new AlertDialog.Builder(context).setMessage(prompt).setTitle(title).setPositiveButton(ok, new DialogInterface.OnClickListener() { // from class: com.sina.weibo.sdk.api.share.WeiboDownloader.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog2, int which) {
                WeiboDownloader.downloadWeibo(context);
            }
        }).setNegativeButton(cancel, new DialogInterface.OnClickListener() { // from class: com.sina.weibo.sdk.api.share.WeiboDownloader.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog2, int which) {
                if (IWeiboDownloadListener.this != null) {
                    IWeiboDownloadListener.this.onCancel();
                }
            }
        }).create();
        return dialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void downloadWeibo(Context context) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setFlags(268435456);
        Uri url = Uri.parse(WBConstants.WEIBO_DOWNLOAD_URL);
        intent.setData(url);
        try {
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
