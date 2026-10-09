.class public Lcom/tencent/msdk/notice/AlertMsgActivity;
.super Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;
.source "AlertMsgActivity.java"


# instance fields
.field mClickCloseButtonLisenter:Landroid/view/View$OnClickListener;

.field mClickMoreButtonLisenter:Landroid/view/View$OnClickListener;

.field private mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;

    .line 361
    new-instance v0, Lcom/tencent/msdk/notice/AlertMsgActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/notice/AlertMsgActivity$2;-><init>(Lcom/tencent/msdk/notice/AlertMsgActivity;)V

    iput-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mClickMoreButtonLisenter:Landroid/view/View$OnClickListener;

    .line 368
    new-instance v0, Lcom/tencent/msdk/notice/AlertMsgActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/notice/AlertMsgActivity$3;-><init>(Lcom/tencent/msdk/notice/AlertMsgActivity;)V

    iput-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mClickCloseButtonLisenter:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/notice/AlertMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/notice/AlertMsgActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->sendClickMoreButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/msdk/notice/AlertMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/notice/AlertMsgActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->sendCloseNotice()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 146
    if-nez p1, :cond_0

    .line 147
    const-string v5, "AlertMsgActivity\'s intent is null!"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 165
    :goto_0
    return v4

    .line 150
    :cond_0
    const-string v5, "method_start_view"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "startInfo":Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    const-string v5, "Start AlertMsgActivity error, start info is empty!"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "json":Lorg/json/JSONObject;
    const-string v5, "alert_notice_info"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "noticeInfoStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;

    if-nez v5, :cond_2

    .line 159
    new-instance v5, Lcom/tencent/msdk/notice/NoticeInfo;

    invoke-direct {v5}, Lcom/tencent/msdk/notice/NoticeInfo;-><init>()V

    iput-object v5, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;

    .line 161
    :cond_2
    iget-object v5, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "sendTime"

    invoke-virtual {v5, v6, v7}, Lcom/tencent/msdk/notice/NoticeInfo;->getBaseInfoFromJson(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    const/4 v4, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "noticeInfoStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resizeView()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 198
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 199
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 200
    .local v1, "window":Landroid/view/Window;
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 201
    return-void
.end method

.method private sendClickMoreButton()V
    .locals 4

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "req_type"

    const-string v3, "notice_more_msg"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/msdk/notice/AlertMsgActivity;->sendEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->finish()V

    .line 81
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendCloseNotice()V
    .locals 4

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "req_type"

    const-string v3, "notice_close"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/msdk/notice/AlertMsgActivity;->sendEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->finish()V

    .line 70
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showNotice()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlertMsgActivity:Id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;

    iget-object v1, v1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";Url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;

    iget-object v1, v1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;

    iget-object v1, v1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentType:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/tencent/msdk/notice/AlertMsgActivity$4;->$SwitchMap$com$tencent$msdk$notice$eMSG_CONTENTTYPE:[I

    iget-object v1, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;

    iget-object v1, v1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentType:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    invoke-virtual {v1}, Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_0
    invoke-direct {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->resizeView()V

    .line 190
    return-void

    .line 174
    :pswitch_0
    invoke-static {p0}, Lcom/tencent/msdk/notice/NoticeResID;->loadTextLayout(Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->displayTextNotice(Lcom/tencent/msdk/notice/NoticeInfo;)V

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-static {p0}, Lcom/tencent/msdk/notice/NoticeResID;->loadImageLayout(Landroid/content/Context;)V

    .line 179
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->displayImageNotice(Lcom/tencent/msdk/notice/NoticeInfo;)V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-static {p0}, Lcom/tencent/msdk/notice/NoticeResID;->loadWebLayout(Landroid/content/Context;)V

    .line 183
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mNoticeInfo:Lcom/tencent/msdk/notice/NoticeInfo;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->displayWebNotice(Lcom/tencent/msdk/notice/NoticeInfo;)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public displayImageNotice(Lcom/tencent/msdk/notice/NoticeInfo;)V
    .locals 8
    .param p1, "noticeInfo"    # Lcom/tencent/msdk/notice/NoticeInfo;

    .prologue
    .line 224
    iget-object v6, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 225
    sget v6, Lcom/tencent/msdk/notice/NoticeResID;->layout_image_notice:I

    invoke-virtual {p0, v6}, Lcom/tencent/msdk/notice/AlertMsgActivity;->setContentView(I)V

    .line 232
    :goto_0
    sget v6, Lcom/tencent/msdk/notice/NoticeResID;->alertNoticeImage:I

    invoke-virtual {p0, v6}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 233
    .local v1, "alertImage":Landroid/widget/ImageView;
    sget v6, Lcom/tencent/msdk/notice/NoticeResID;->notice_alert_drawable:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    sget v6, Lcom/tencent/msdk/notice/NoticeResID;->confirmbtn:I

    invoke-virtual {p0, v6}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 235
    .local v0, "Conform":Landroid/widget/Button;
    iget-object v6, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mClickCloseButtonLisenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    sget v6, Lcom/tencent/msdk/notice/NoticeResID;->noticeContent:I

    invoke-virtual {p0, v6}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 237
    .local v4, "noticeContent":Landroid/widget/ImageView;
    sget-object v6, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->getEnum(Landroid/content/res/Configuration;)Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 238
    iget-object v6, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 239
    const-string v6, "mNoticeHImgUrl is null"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 264
    :goto_1
    return-void

    .line 227
    .end local v0    # "Conform":Landroid/widget/Button;
    .end local v1    # "alertImage":Landroid/widget/ImageView;
    .end local v4    # "noticeContent":Landroid/widget/ImageView;
    :cond_0
    sget v6, Lcom/tencent/msdk/notice/NoticeResID;->layout_image_notice_url:I

    invoke-virtual {p0, v6}, Lcom/tencent/msdk/notice/AlertMsgActivity;->setContentView(I)V

    .line 228
    sget v6, Lcom/tencent/msdk/notice/NoticeResID;->morebtn:I

    invoke-virtual {p0, v6}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 229
    .local v3, "moreBtn":Landroid/widget/Button;
    iget-object v6, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mClickMoreButtonLisenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 242
    .end local v3    # "moreBtn":Landroid/widget/Button;
    .restart local v0    # "Conform":Landroid/widget/Button;
    .restart local v1    # "alertImage":Landroid/widget/ImageView;
    .restart local v4    # "noticeContent":Landroid/widget/ImageView;
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v6, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v2, "imgFile":Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 244
    .local v5, "tempUri":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 245
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 247
    :cond_2
    const-string v6, "Uri is null"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 251
    .end local v2    # "imgFile":Ljava/io/File;
    .end local v5    # "tempUri":Landroid/net/Uri;
    :cond_3
    iget-object v6, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 252
    const-string v6, "mNoticeHImgUrl is null"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 255
    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v6, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v2    # "imgFile":Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 257
    .restart local v5    # "tempUri":Landroid/net/Uri;
    if-eqz v5, :cond_5

    .line 258
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 260
    :cond_5
    const-string v6, "Uri is null"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public displayTextNotice(Lcom/tencent/msdk/notice/NoticeInfo;)V
    .locals 6
    .param p1, "noticeInfo"    # Lcom/tencent/msdk/notice/NoticeInfo;

    .prologue
    .line 204
    iget-object v5, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    sget v5, Lcom/tencent/msdk/notice/NoticeResID;->layout_text_notice:I

    invoke-virtual {p0, v5}, Lcom/tencent/msdk/notice/AlertMsgActivity;->setContentView(I)V

    .line 212
    :goto_0
    sget v5, Lcom/tencent/msdk/notice/NoticeResID;->alertNoticeImage:I

    invoke-virtual {p0, v5}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    .local v0, "alertImage":Landroid/widget/ImageView;
    sget v5, Lcom/tencent/msdk/notice/NoticeResID;->notice_alert_drawable:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    sget v5, Lcom/tencent/msdk/notice/NoticeResID;->noticeTitle:I

    invoke-virtual {p0, v5}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 215
    .local v4, "noticeTitle":Landroid/widget/TextView;
    iget-object v5, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    sget v5, Lcom/tencent/msdk/notice/NoticeResID;->noticeContent:I

    invoke-virtual {p0, v5}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 217
    .local v3, "noticeContent":Landroid/widget/TextView;
    iget-object v5, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContent:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 219
    sget v5, Lcom/tencent/msdk/notice/NoticeResID;->confirmbtn:I

    invoke-virtual {p0, v5}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 220
    .local v1, "conformBtn":Landroid/widget/Button;
    iget-object v5, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mClickCloseButtonLisenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void

    .line 207
    .end local v0    # "alertImage":Landroid/widget/ImageView;
    .end local v1    # "conformBtn":Landroid/widget/Button;
    .end local v3    # "noticeContent":Landroid/widget/TextView;
    .end local v4    # "noticeTitle":Landroid/widget/TextView;
    :cond_0
    sget v5, Lcom/tencent/msdk/notice/NoticeResID;->layout_text_notice_url:I

    invoke-virtual {p0, v5}, Lcom/tencent/msdk/notice/AlertMsgActivity;->setContentView(I)V

    .line 208
    sget v5, Lcom/tencent/msdk/notice/NoticeResID;->morebtn:I

    invoke-virtual {p0, v5}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 209
    .local v2, "moreBtn":Landroid/widget/Button;
    iget-object v5, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mClickMoreButtonLisenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public displayWebNotice(Lcom/tencent/msdk/notice/NoticeInfo;)V
    .locals 11
    .param p1, "noticeInfo"    # Lcom/tencent/msdk/notice/NoticeInfo;

    .prologue
    const/4 v10, 0x0

    .line 266
    iget-object v0, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    sget v0, Lcom/tencent/msdk/notice/NoticeResID;->layout_web_notice:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->setContentView(I)V

    .line 274
    :goto_0
    sget v0, Lcom/tencent/msdk/notice/NoticeResID;->alertNoticeImage:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 275
    .local v7, "alertImage":Landroid/widget/ImageView;
    sget v0, Lcom/tencent/msdk/notice/NoticeResID;->notice_alert_drawable:I

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    sget v0, Lcom/tencent/msdk/notice/NoticeResID;->confirmbtn:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 277
    .local v6, "Conform":Landroid/widget/Button;
    sget v0, Lcom/tencent/msdk/notice/NoticeResID;->noticeContentLine:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 278
    .local v3, "noticeContentLine":Landroid/widget/LinearLayout;
    sget v0, Lcom/tencent/msdk/notice/NoticeResID;->tempLoadLayer:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 279
    .local v2, "tempLoadLayer":Landroid/widget/LinearLayout;
    sget v0, Lcom/tencent/msdk/notice/NoticeResID;->tempLoadFailed:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 281
    .local v4, "tempLoadFailed":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mClickCloseButtonLisenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    sget v0, Lcom/tencent/msdk/notice/NoticeResID;->noticeContent:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tencent/smtt/sdk/WebView;

    .line 283
    .local v5, "noticeContent":Lcom/tencent/smtt/sdk/WebView;
    new-instance v0, Lcom/tencent/msdk/notice/AlertMsgActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/msdk/notice/AlertMsgActivity$1;-><init>(Lcom/tencent/msdk/notice/AlertMsgActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/tencent/smtt/sdk/WebView;)V

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 346
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 347
    const-string v0, "accessibility"

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 348
    const-string v0, "accessibilityTraversal"

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 350
    :cond_0
    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v9

    .line 351
    .local v9, "webSetting":Lcom/tencent/smtt/sdk/WebSettings;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 352
    invoke-virtual {v9, v10}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 354
    invoke-virtual {v9, v10}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 355
    invoke-virtual {v9, v10}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 357
    iget-object v0, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentWebUrl:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 359
    return-void

    .line 269
    .end local v2    # "tempLoadLayer":Landroid/widget/LinearLayout;
    .end local v3    # "noticeContentLine":Landroid/widget/LinearLayout;
    .end local v4    # "tempLoadFailed":Landroid/widget/LinearLayout;
    .end local v5    # "noticeContent":Lcom/tencent/smtt/sdk/WebView;
    .end local v6    # "Conform":Landroid/widget/Button;
    .end local v7    # "alertImage":Landroid/widget/ImageView;
    .end local v9    # "webSetting":Lcom/tencent/smtt/sdk/WebSettings;
    :cond_1
    sget v0, Lcom/tencent/msdk/notice/NoticeResID;->layout_web_notice_url:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->setContentView(I)V

    .line 270
    sget v0, Lcom/tencent/msdk/notice/NoticeResID;->morebtn:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 271
    .local v8, "moreBtn":Landroid/widget/Button;
    iget-object v0, p0, Lcom/tencent/msdk/notice/AlertMsgActivity;->mClickMoreButtonLisenter:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public finishView()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->getInstance()Lcom/tencent/msdk/framework/msdkview/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->removeView(Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;)Z

    .line 53
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->finish()V

    .line 54
    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "view_name_notice"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 139
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->showNotice()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "AlertMsgActivity onCreate"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->showNotice()V

    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "Start AlertMsgActivity\'s Intent is null! Try to show next notice."

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->sendCloseNotice()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onDestroyNotRemoveView()V

    .line 109
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    const-string v0, "AlertMsgActivity onDestroy"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onNewIntent(Landroid/content/Intent;)V

    .line 118
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v0, "AlertMsgActivity onNewIntent"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->showNotice()V

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "Start AlertMsgActivity\'s Intent is null! Try to show next notice."

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/tencent/msdk/notice/AlertMsgActivity;->sendCloseNotice()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onResume()V

    .line 103
    const-string v0, "AlertMsgActivity onResume"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public recvEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method
