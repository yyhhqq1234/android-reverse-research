.class public Lcom/tencent/msdk/webview/WebViewResID;
.super Lcom/tencent/msdk/tools/ResID;
.source "WebViewResID.java"


# static fields
.field public static anim_titlebar_hide:I

.field public static anim_titlebar_show:I

.field public static anim_toolbar_hide:I

.field public static anim_toolbar_show:I

.field public static back:I

.field public static backUnclickable:I

.field public static color_toolbar_invisible:I

.field public static color_toolbar_visible:I

.field public static color_transparent:I

.field public static dimen_fling_limit_x:I

.field public static dimen_fling_limit_y:I

.field public static dimen_titlebar_height:I

.field public static dlg_btn_cancel:I

.field public static dlg_gridview:I

.field public static drawable_open_by_otherbrowser:I

.field public static drawable_open_by_qqbrowser:I

.field public static drawable_share_to_qq:I

.field public static drawable_share_to_qzone:I

.field public static drawable_share_to_wx:I

.field public static drawable_share_to_wx_friend:I

.field public static forward:I

.field public static forwardUnclickable:I

.field public static itemImage:I

.field public static itemText:I

.field public static land_more:I

.field public static land_openByQQBrowser:I

.field public static layout_dlg_gridview_item:I

.field public static layout_sheet_dlg:I

.field public static layout_thrdcall_window:I

.field public static more:I

.field public static openByQQBrowser:I

.field public static playout:I

.field public static progress:I

.field public static refresh:I

.field public static return_app:I

.field public static stop:I

.field public static str_shareToQQ:I

.field public static str_shareToQQ_url_too_long:I

.field public static str_shareToQzone:I

.field public static str_shareToWx:I

.field public static str_shareToWxFriend:I

.field public static str_thrdcall_cancel:I

.field public static str_thrdcall_confirm:I

.field public static str_thrdcall_openbrowser:I

.field public static str_thrdcall_openqbx:I

.field public static str_thrdcall_recom_mtt_content:I

.field public static str_thrdcall_recom_mtt_title:I

.field public static str_uninstall_qq:I

.field public static str_uninstall_wx:I

.field public static str_untitle_share:I

.field public static str_upload_file_title:I

.field public static style_SheetDialogAnimation:I

.field public static style_SheetDialogTheme:I

.field public static titleBar:I

.field public static toolbar:I

.field public static webTitle:I

.field public static webview:I


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
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "com_tencent_msdk_webview_window"

    const-string v3, "layout"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->layout_thrdcall_window:I

    .line 94
    const-string v2, "msdk_thrdcall_dlg_sheet"

    const-string v3, "layout"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->layout_sheet_dlg:I

    .line 95
    const-string v2, "msdk_thrdcall_dlg_griditem"

    const-string v3, "layout"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->layout_dlg_gridview_item:I

    .line 98
    const-string v2, "playout"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->playout:I

    .line 99
    const-string/jumbo v2, "webview"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->webview:I

    .line 100
    const-string/jumbo v2, "webTitle"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->webTitle:I

    .line 101
    const-string v2, "refresh"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->refresh:I

    .line 102
    const-string v2, "stop"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->stop:I

    .line 103
    const-string v2, "back"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->back:I

    .line 104
    const-string v2, "backUnclickable"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->backUnclickable:I

    .line 105
    const-string v2, "openByQQBrowser"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->openByQQBrowser:I

    .line 106
    const-string v2, "forward"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->forward:I

    .line 107
    const-string v2, "forwardUnclickable"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->forwardUnclickable:I

    .line 108
    const-string v2, "return_app"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->return_app:I

    .line 109
    const-string v2, "more"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->more:I

    .line 110
    const-string v2, "dlg_gridview"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->dlg_gridview:I

    .line 111
    const-string v2, "dlg_btn_cancel"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->dlg_btn_cancel:I

    .line 112
    const-string v2, "itemImage"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->itemImage:I

    .line 113
    const-string v2, "itemText"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->itemText:I

    .line 114
    const-string/jumbo v2, "titlebar"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->titleBar:I

    .line 115
    const-string/jumbo v2, "toolbar"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->toolbar:I

    .line 118
    const-string v2, "landMore"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->land_more:I

    .line 119
    const-string v2, "landOpenByQQBrowser"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->land_openByQQBrowser:I

    .line 122
    const-string v2, "msdk_thrdcall_open_by_qq_browser"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->drawable_open_by_qqbrowser:I

    .line 123
    const-string v2, "msdk_thrdcall_open_by_other_browser"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->drawable_open_by_otherbrowser:I

    .line 124
    const-string v2, "msdk_thrdcall_share_friend"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_wx_friend:I

    .line 125
    const-string v2, "msdk_thrdcall_share_weixin"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_wx:I

    .line 126
    const-string v2, "msdk_thrdcall_share_qq"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_qq:I

    .line 127
    const-string v2, "msdk_thrdcall_share_qzone"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->drawable_share_to_qzone:I

    .line 130
    const-string v2, "SheetDialogTheme"

    const-string/jumbo v3, "style"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->style_SheetDialogTheme:I

    .line 131
    const-string v2, "SheetDialogAnimation"

    const-string/jumbo v3, "style"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->style_SheetDialogAnimation:I

    .line 134
    const-string/jumbo v2, "thrdcall_recom_mtt_title"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_recom_mtt_title:I

    .line 135
    const-string/jumbo v2, "thrdcall_recom_mtt_content"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_recom_mtt_content:I

    .line 136
    const-string/jumbo v2, "thrdcall_confirm"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_confirm:I

    .line 137
    const-string/jumbo v2, "thrdcall_cancel"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_cancel:I

    .line 139
    const-string/jumbo v2, "thrdcall_openqbx"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_openqbx:I

    .line 140
    const-string/jumbo v2, "thrdcall_openbrowser"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_thrdcall_openbrowser:I

    .line 142
    const-string v2, "msdk_more_shareToQzone"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToQzone:I

    .line 143
    const-string v2, "msdk_more_shareToWxFriend"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToWxFriend:I

    .line 144
    const-string v2, "msdk_more_shareToQQ"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToQQ:I

    .line 145
    const-string v2, "msdk_more_shareToWx"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToWx:I

    .line 146
    const-string v2, "msdk_more_shareToQQ_url_too_long"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_shareToQQ_url_too_long:I

    .line 147
    const-string v2, "msdk_upload_file_title"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_upload_file_title:I

    .line 148
    const-string v2, "msdk_uninstall_qq"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_uninstall_qq:I

    .line 149
    const-string v2, "msdk_uninstall_wx"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_uninstall_wx:I

    .line 150
    const-string v2, "msdk_untitle_share"

    const-string/jumbo v3, "string"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->str_untitle_share:I

    .line 153
    const-string/jumbo v2, "thrdcall_transparent"

    const-string v3, "color"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->color_transparent:I

    .line 154
    const-string/jumbo v2, "thrdcall_toolbar_visible"

    const-string v3, "color"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->color_toolbar_visible:I

    .line 155
    const-string/jumbo v2, "thrdcall_toolbar_invisible"

    const-string v3, "color"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->color_toolbar_invisible:I

    .line 158
    const-string/jumbo v2, "thrdcall_titlebar_height"

    const-string v3, "dimen"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->dimen_titlebar_height:I

    .line 159
    const-string/jumbo v2, "thrdcall_fling_limit_x"

    const-string v3, "dimen"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->dimen_fling_limit_x:I

    .line 160
    const-string/jumbo v2, "thrdcall_fling_limit_y"

    const-string v3, "dimen"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->dimen_fling_limit_y:I

    .line 166
    const-string v2, "com_tencent_msdk_webview_toolbar_hide"

    const-string v3, "anim"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->anim_toolbar_hide:I

    .line 167
    const-string v2, "com_tencent_msdk_webview_toolbar_show"

    const-string v3, "anim"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->anim_toolbar_show:I

    .line 168
    const-string v2, "com_tencent_msdk_webview_titlebar_hide"

    const-string v3, "anim"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->anim_titlebar_hide:I

    .line 169
    const-string v2, "com_tencent_msdk_webview_titlebar_show"

    const-string v3, "anim"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/webview/WebViewResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/webview/WebViewResID;->anim_titlebar_show:I

    .line 170
    return-void
.end method
