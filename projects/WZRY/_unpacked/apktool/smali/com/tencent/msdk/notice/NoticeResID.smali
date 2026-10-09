.class public Lcom/tencent/msdk/notice/NoticeResID;
.super Lcom/tencent/msdk/tools/ResID;
.source "NoticeResID.java"


# static fields
.field public static alertNoticeImage:I

.field public static confirmbtn:I

.field public static land_0:I

.field public static layout_image_notice:I

.field public static layout_image_notice_url:I

.field public static layout_scroll_notice:I

.field public static layout_text_notice:I

.field public static layout_text_notice_url:I

.field public static layout_web_notice:I

.field public static layout_web_notice_url:I

.field public static marquee:I

.field public static morebtn:I

.field public static noticeContent:I

.field public static noticeContentLine:I

.field public static noticeTitle:I

.field public static notice_alert_drawable:I

.field public static notice_roll_drawable:I

.field public static noticemain:I

.field public static rollImage:I

.field public static tempLayer:I

.field public static tempLoadFailed:I

.field public static tempLoadLayer:I

.field public static web_load_gif:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/msdk/tools/ResID;-><init>()V

    return-void
.end method

.method public static loadImageLayout(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 67
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "com_tencent_msdk_notice_popup"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->notice_alert_drawable:I

    .line 68
    const-string v2, "noticemain"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->noticemain:I

    .line 69
    const-string v2, "popupImage"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->alertNoticeImage:I

    .line 70
    const-string v2, "confirmbtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->confirmbtn:I

    .line 71
    const-string v2, "morebtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->morebtn:I

    .line 73
    const-string v2, "com_tencent_msdk_notice_image"

    const-string v3, "layout"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->layout_image_notice:I

    .line 74
    const-string v2, "com_tencent_msdk_notice_image_url"

    const-string v3, "layout"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->layout_image_notice_url:I

    .line 75
    const-string v2, "noticeContent"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->noticeContent:I

    .line 76
    return-void
.end method

.method public static loadScrollLayout(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 100
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "com_tencent_msdk_notice_roll"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->notice_roll_drawable:I

    .line 101
    const-string v2, "com_tencent_msdk_notice_roll"

    const-string v3, "layout"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->layout_scroll_notice:I

    .line 102
    const-string v2, "rollImage"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->rollImage:I

    .line 103
    const-string v2, "marquee"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->marquee:I

    .line 104
    return-void
.end method

.method public static loadTextLayout(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "com_tencent_msdk_notice_popup"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->notice_alert_drawable:I

    .line 52
    const-string v2, "noticemain"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->noticemain:I

    .line 53
    const-string v2, "popupImage"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->alertNoticeImage:I

    .line 54
    const-string v2, "confirmbtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->confirmbtn:I

    .line 55
    const-string v2, "morebtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->morebtn:I

    .line 57
    const-string v2, "com_tencent_msdk_notice_text"

    const-string v3, "layout"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->layout_text_notice:I

    .line 58
    const-string v2, "com_tencent_msdk_notice_text_url"

    const-string v3, "layout"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->layout_text_notice_url:I

    .line 59
    const-string v2, "noticeTitle"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->noticeTitle:I

    .line 60
    const-string v2, "noticeContent"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->noticeContent:I

    .line 61
    return-void
.end method

.method public static loadWebLayout(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 82
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "com_tencent_msdk_notice_popup"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->notice_alert_drawable:I

    .line 83
    const-string v2, "noticemain"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->noticemain:I

    .line 84
    const-string v2, "popupImage"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->alertNoticeImage:I

    .line 85
    const-string v2, "confirmbtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->confirmbtn:I

    .line 86
    const-string v2, "morebtn"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->morebtn:I

    .line 88
    const-string v2, "com_tencent_msdk_notice_web"

    const-string v3, "layout"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->layout_web_notice:I

    .line 89
    const-string v2, "com_tencent_msdk_notice_web_url"

    const-string v3, "layout"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->layout_web_notice_url:I

    .line 90
    const-string v2, "noticeContent"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->noticeContent:I

    .line 91
    const-string v2, "noticeContentLine"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->noticeContentLine:I

    .line 92
    const-string/jumbo v2, "tempLoadLayer"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->tempLoadLayer:I

    .line 93
    const-string/jumbo v2, "tempLoadFailed"

    const-string v3, "id"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/msdk/notice/NoticeResID;->loadIdentifierResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/msdk/notice/NoticeResID;->tempLoadFailed:I

    .line 94
    return-void
.end method
