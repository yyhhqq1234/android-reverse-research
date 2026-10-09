.class public Lcom/smoba/webview/WebViewResID;
.super Lcom/tencent/msdk/tools/ResID;
.source "WebViewResID.java"


# static fields
.field public static drawable_smobawebview_back:I

.field public static drawable_smobawebview_back1:I

.field public static drawable_smobawebview_home_titleimg:I

.field public static drawable_smobawebview_no_wifi_0:I

.field public static drawable_smobawebview_no_wifi_1:I

.field public static drawable_smobawebview_no_wifi_2:I

.field public static drawable_smobawebview_no_wifi_3:I

.field public static drawable_smobawebview_subscribe_titileimg:I

.field public static drawable_smobawebview_wifi_0:I

.field public static drawable_smobawebview_wifi_1:I

.field public static drawable_smobawebview_wifi_2:I

.field public static smobawebviewData:I

.field public static smobawebview_ProgressStyle:I

.field public static smobawebview_RetryTipsView:I

.field public static smobawebview_backup:I

.field public static smobawebview_detailText:I

.field public static smobawebview_frameheader:I

.field public static smobawebview_heart:I

.field public static smobawebview_hometitle:I

.field public static smobawebview_in_circleImge:I

.field public static smobawebview_load_animation:I

.field public static smobawebview_load_animation_reverse:I

.field public static smobawebview_loading_dialog:I

.field public static smobawebview_loading_dialogview:I

.field public static smobawebview_out_circleImge:I

.field public static smobawebview_poawerprogress:I

.field public static smobawebview_power:I

.field public static smobawebview_redpoint:I

.field public static smobawebview_retryBtn:I

.field public static smobawebview_webview:I

.field public static smobawebview_wifi:I

.field public static smobawebviewlayout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/msdk/tools/ResID;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "smobawebviewlayout"

    const-string v3, "layout"

    .line 70
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebviewlayout:I

    .line 75
    const-string v2, "smobawebview_loading_dialog"

    const-string v3, "layout"

    .line 74
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_loading_dialog:I

    .line 79
    const-string v2, "smobawebview_poawerprogress"

    const-string v3, "id"

    .line 78
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_poawerprogress:I

    .line 81
    const-string v2, "smobawebview_webview"

    const-string v3, "id"

    .line 80
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_webview:I

    .line 84
    const-string v2, "smobawebview_backup"

    const-string v3, "id"

    .line 83
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_backup:I

    .line 86
    const-string v2, "smobawebview_detailText"

    const-string v3, "id"

    .line 85
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_detailText:I

    .line 88
    const-string v2, "smobawebview_frameheader"

    const-string v3, "id"

    .line 87
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_frameheader:I

    .line 90
    const-string v2, "smobawebview_heart"

    const-string v3, "id"

    .line 89
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_heart:I

    .line 92
    const-string v2, "smobawebview_wifi"

    const-string v3, "id"

    .line 91
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_wifi:I

    .line 94
    const-string v2, "smobawebview_power"

    const-string v3, "id"

    .line 93
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_power:I

    .line 96
    const-string v2, "smobawebview_redpoint"

    const-string v3, "id"

    .line 95
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_redpoint:I

    .line 98
    const-string v2, "smobawebview_hometitle"

    const-string v3, "id"

    .line 97
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_hometitle:I

    .line 101
    const-string v2, "smobawebview_retryBtn"

    const-string v3, "id"

    .line 100
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_retryBtn:I

    .line 103
    const-string v2, "smobawebview_RetryTipsView"

    const-string v3, "id"

    .line 102
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_RetryTipsView:I

    .line 106
    const-string v2, "smobawebviewData"

    const-string v3, "id"

    .line 105
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebviewData:I

    .line 110
    const-string v2, "smobawebview_in_circle"

    const-string v3, "id"

    .line 109
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_in_circleImge:I

    .line 114
    const-string v2, "smobawebview_out_circle"

    const-string v3, "id"

    .line 113
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_out_circleImge:I

    .line 118
    const-string v2, "smobawebview_loading_dialogview"

    const-string v3, "id"

    .line 117
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_loading_dialogview:I

    .line 122
    const-string v2, "SmobWebViewProgressDialog"

    const-string/jumbo v3, "style"

    .line 121
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_ProgressStyle:I

    .line 125
    const-string v2, "smobawebview_wifi_0"

    const-string v3, "drawable"

    .line 124
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_wifi_0:I

    .line 127
    const-string v2, "smobawebview_wifi_1"

    const-string v3, "drawable"

    .line 126
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_wifi_1:I

    .line 129
    const-string v2, "smobawebview_wifi_2"

    const-string v3, "drawable"

    .line 128
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_wifi_2:I

    .line 133
    const-string v2, "smobawebview_nowifi_0"

    const-string v3, "drawable"

    .line 132
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_no_wifi_0:I

    .line 135
    const-string v2, "smobawebview_nowifi_1"

    const-string v3, "drawable"

    .line 134
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_no_wifi_1:I

    .line 137
    const-string v2, "smobawebview_nowifi_2"

    const-string v3, "drawable"

    .line 136
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_no_wifi_2:I

    .line 139
    const-string v2, "smobawebview_nowifi_3"

    const-string v3, "drawable"

    .line 138
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_no_wifi_3:I

    .line 142
    const-string v2, "smobawebview_home_titleimg"

    const-string v3, "drawable"

    .line 141
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_home_titleimg:I

    .line 144
    const-string v2, "smobawebview_subscribe_titileimg"

    const-string v3, "drawable"

    .line 143
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_subscribe_titileimg:I

    .line 149
    const-string v2, "smobawebview_title_back_logo"

    const-string v3, "drawable"

    .line 148
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_back:I

    .line 151
    const-string v2, "smobawebview_title_back_logo_1"

    const-string v3, "drawable"

    .line 150
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_back1:I

    .line 157
    const-string v2, "smobawebview_load_animation"

    const-string v3, "anim"

    .line 156
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_load_animation:I

    .line 160
    const-string v2, "smobawebview_load_animation_reverse"

    const-string v3, "anim"

    .line 159
    invoke-static {v1, v2, v3, v0}, Lcom/smoba/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/smoba/webview/WebViewResID;->smobawebview_load_animation_reverse:I

    .line 163
    return-void
.end method
