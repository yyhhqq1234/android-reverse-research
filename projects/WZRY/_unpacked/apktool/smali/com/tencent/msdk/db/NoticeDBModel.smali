.class public Lcom/tencent/msdk/db/NoticeDBModel;
.super Lcom/tencent/msdk/db/BaseDBModel;
.source "NoticeDBModel.java"


# static fields
.field private static NOTICE_SQL_LIMIT:Ljava/lang/String; = null

.field public static final TBL_NAME:Ljava/lang/String; = "notice_info"

.field public static col_app_id:Ljava/lang/String;

.field public static col_content_type:Ljava/lang/String;

.field public static col_end_time:Ljava/lang/String;

.field public static col_horizontal_img_hash:Ljava/lang/String;

.field public static col_horizontal_img_url:Ljava/lang/String;

.field public static col_msg_content:Ljava/lang/String;

.field public static col_msg_custom:Ljava/lang/String;

.field public static col_msg_id:Ljava/lang/String;

.field public static col_msg_order:Ljava/lang/String;

.field public static col_msg_scene:Ljava/lang/String;

.field public static col_msg_title:Ljava/lang/String;

.field public static col_msg_type:Ljava/lang/String;

.field public static col_msg_url:Ljava/lang/String;

.field public static col_open_id:Ljava/lang/String;

.field public static col_start_time:Ljava/lang/String;

.field public static col_update_time:Ljava/lang/String;

.field public static col_vertical_img_hash:Ljava/lang/String;

.field public static col_vertical_img_url:Ljava/lang/String;

.field public static col_web_url:Ljava/lang/String;


# instance fields
.field private helper:Lcom/tencent/msdk/db/DbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "20"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->NOTICE_SQL_LIMIT:Ljava/lang/String;

    .line 24
    const-string v0, "msg_id"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    .line 25
    const-string v0, "app_id"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_app_id:Ljava/lang/String;

    .line 26
    const-string v0, "open_id"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_open_id:Ljava/lang/String;

    .line 27
    const-string v0, "msg_url"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_url:Ljava/lang/String;

    .line 28
    const-string v0, "msg_type"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_type:Ljava/lang/String;

    .line 29
    const-string v0, "msg_scene"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_scene:Ljava/lang/String;

    .line 30
    const-string v0, "start_time"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_start_time:Ljava/lang/String;

    .line 31
    const-string v0, "end_time"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_end_time:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "update_time"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_update_time:Ljava/lang/String;

    .line 33
    const-string v0, "content_type"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_content_type:Ljava/lang/String;

    .line 34
    const-string v0, "msg_order"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_order:Ljava/lang/String;

    .line 36
    const-string v0, "msg_content"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_content:Ljava/lang/String;

    .line 37
    const-string v0, "msg_title"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_title:Ljava/lang/String;

    .line 39
    const-string v0, "h_img_url"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_horizontal_img_url:Ljava/lang/String;

    .line 40
    const-string v0, "h_img_hash"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_horizontal_img_hash:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "v_img_url"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_vertical_img_url:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "v_img_hash"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_vertical_img_hash:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "web_url"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_web_url:Ljava/lang/String;

    .line 45
    const-string v0, "msg_custom"

    sput-object v0, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_custom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tencent/msdk/db/BaseDBModel;-><init>()V

    .line 48
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 52
    return-void
.end method

.method private getColumnData(Landroid/database/Cursor;)Lcom/tencent/msdk/notice/NoticeInfo;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 329
    new-instance v0, Lcom/tencent/msdk/notice/NoticeInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/notice/NoticeInfo;-><init>()V

    .line 330
    .local v0, "info":Lcom/tencent/msdk/notice/NoticeInfo;
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    .line 331
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_app_id:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mAppId:Ljava/lang/String;

    .line 332
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mOpenId:Ljava/lang/String;

    .line 333
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_url:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    .line 334
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_type:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getIntByName(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->getEnum(I)Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeType:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    .line 336
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_scene:Ljava/lang/String;

    .line 337
    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeScene:Ljava/lang/String;

    .line 338
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_start_time:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeStartTime:Ljava/lang/String;

    .line 340
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_end_time:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeEndTime:Ljava/lang/String;

    .line 342
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_update_time:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUpdateTime:Ljava/lang/String;

    .line 344
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_content_type:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getIntByName(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;->getEnum(I)Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentType:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    .line 346
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_title:Ljava/lang/String;

    .line 347
    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeTitle:Ljava/lang/String;

    .line 348
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_content:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContent:Ljava/lang/String;

    .line 350
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_horizontal_img_url:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    .line 352
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_horizontal_img_hash:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    .line 354
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_vertical_img_url:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    .line 356
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_vertical_img_hash:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    .line 358
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_web_url:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentWebUrl:Ljava/lang/String;

    .line 360
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_order:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeOrder:Ljava/lang/String;

    .line 362
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_custom:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeCustom:Ljava/lang/String;

    .line 363
    return-object v0
.end method

.method public static getCreateTableSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    const-string v0, ""

    .line 56
    .local v0, "createTblSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CREATE TABLE IF NOT EXISTS [notice_info] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(32)  PRIMARY KEY NOT NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TEXT  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(16)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_scene:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(16)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_start_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TIMESTAMP  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_end_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TIMESTAMP  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_update_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TIMESTAMP  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_content_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(16)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_order:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(16)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TEXT  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_horizontal_img_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_horizontal_img_hash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(64)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_vertical_img_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_vertical_img_hash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(64)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_web_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(512)  NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTblSql:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 81
    return-object v0
.end method

.method public static getDropTableSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "DROP TABLE IF EXISTS notice_info"

    return-object v0
.end method


# virtual methods
.method public deleteNoticeByMsgId(Ljava/lang/String;)I
    .locals 8
    .param p1, "msg_id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    const-string v5, "msg_id is null"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 233
    :goto_0
    return v2

    .line 220
    :cond_0
    iget-object v6, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 221
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " `"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "` = ? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteNoticeByMsgId, msg_id= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 225
    iget-object v5, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 226
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "notice_info"

    .line 227
    invoke-virtual {v0, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 228
    .local v2, "howManyDeleted":I
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 235
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "howManyDeleted":I
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 229
    .restart local v3    # "whereArgs":[Ljava/lang/String;
    .restart local v4    # "whereClause":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v5, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteNoticeByMsgId Error, Selection: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 232
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 233
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public deleteNoticeByTime(Ljava/lang/String;)I
    .locals 8
    .param p1, "currentTime"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    const-string v5, "currentTime is null"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 137
    :goto_0
    return v2

    .line 124
    :cond_0
    iget-object v6, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 125
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/tencent/msdk/db/NoticeDBModel;->col_end_time:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " < ? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteNoticeByTime, currentTime= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 129
    iget-object v5, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 130
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "notice_info"

    .line 131
    invoke-virtual {v0, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 132
    .local v2, "howManyDeleted":I
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 139
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "howManyDeleted":I
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 133
    .restart local v3    # "whereArgs":[Ljava/lang/String;
    .restart local v4    # "whereClause":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v5, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteNoticeByTime Error, Selection: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 136
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 137
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public deleteNoticeInDBByMsgList(Ljava/lang/String;)I
    .locals 7
    .param p1, "msgList"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    const-string v4, "msgList is null"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 204
    :goto_0
    return v1

    .line 184
    :cond_0
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sql para is end with ,msgList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sql para after check ,msgList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 193
    :goto_1
    iget-object v5, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v5

    .line 194
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 196
    .local v3, "whereClause":Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "whereClause: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 197
    iget-object v4, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v4}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 198
    .local v2, "rdb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "notice_info"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 199
    .local v1, "howManyDeleted":I
    :try_start_2
    monitor-exit v5

    goto/16 :goto_0

    .line 206
    .end local v1    # "howManyDeleted":I
    .end local v2    # "rdb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 190
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    .restart local v3    # "whereClause":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v4, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v4}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteNoticeInDBByMsgList Error, Selection: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 204
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public getAllNoticeRecord()Ljava/util/Vector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/notice/NoticeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 464
    .local v3, "noticeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/notice/NoticeInfo;>;"
    iget-object v7, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v7

    .line 465
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * from notice_info ORDER BY "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_order:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " DESC, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " DESC; "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 468
    .local v5, "sql":Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 469
    iget-object v6, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v6}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 470
    .local v4, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 471
    .local v0, "c":Landroid/database/Cursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query result:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 472
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 473
    invoke-direct {p0, v0}, Lcom/tencent/msdk/db/NoticeDBModel;->getColumnData(Landroid/database/Cursor;)Lcom/tencent/msdk/notice/NoticeInfo;

    move-result-object v2

    .line 474
    .local v2, "info":Lcom/tencent/msdk/notice/NoticeInfo;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query result info:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v2, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 472
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 478
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v2    # "info":Lcom/tencent/msdk/notice/NoticeInfo;
    .end local v4    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAllNoticeRecord cause exception. sql: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 480
    iget-object v6, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v6}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 481
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 483
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    .line 477
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v4    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 484
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v4    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6
.end method

.method public getLastUpdateTimeByAppIdAndOpenId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v12, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v12

    .line 303
    :try_start_0
    const-string v11, "0"

    .line 304
    .local v11, "update_time":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_update_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "` DESC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, "orderBy":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "` = ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/NoticeDBModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "` = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .local v4, "whereArgs":[Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 310
    .local v0, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notice_info"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 312
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 313
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 314
    sget-object v1, Lcom/tencent/msdk/db/NoticeDBModel;->col_update_time:Ljava/lang/String;

    invoke-virtual {p0, v9, v1}, Lcom/tencent/msdk/db/NoticeDBModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 317
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "c":Landroid/database/Cursor;
    :goto_0
    :try_start_2
    monitor-exit v12

    return-object v11

    .line 318
    :catch_0
    move-exception v10

    .line 319
    .local v10, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastUpdateTimeByAppIdAndOpenId cause exception. Selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "update_time":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getNoticeRecordByMsgId(Ljava/lang/String;Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;)Ljava/util/Vector;
    .locals 12
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "noticeType"    # Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/notice/NoticeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "currentTime":Ljava/lang/String;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 419
    .local v4, "noticeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/notice/NoticeInfo;>;"
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 420
    :cond_0
    const-string v8, "msgId,currentTime maybe null"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 457
    :goto_0
    return-object v4

    .line 423
    :cond_1
    invoke-static {p2}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->checkIsValidType(Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad noticeType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_2
    iget-object v9, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v9

    .line 429
    :try_start_0
    sget-object v6, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_type:Ljava/lang/String;

    .line 430
    .local v6, "selection":Ljava/lang/String;
    sget-object v8, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    if-ne v8, p2, :cond_3

    .line 431
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " in (0,1,"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->val()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 436
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT * from notice_info where "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " AND "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/tencent/msdk/db/NoticeDBModel;->col_start_time:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " < "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " AND "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/tencent/msdk/db/NoticeDBModel;->col_end_time:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " > "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " AND "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ORDER BY "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_order:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " DESC, "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " DESC LIMIT "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/tencent/msdk/db/NoticeDBModel;->NOTICE_SQL_LIMIT:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "; "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 442
    .local v7, "sql":Ljava/lang/String;
    :try_start_1
    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 443
    iget-object v8, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v8}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 444
    .local v5, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 445
    .local v0, "c":Landroid/database/Cursor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query result:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 446
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_4

    .line 447
    invoke-direct {p0, v0}, Lcom/tencent/msdk/db/NoticeDBModel;->getColumnData(Landroid/database/Cursor;)Lcom/tencent/msdk/notice/NoticeInfo;

    move-result-object v3

    .line 448
    .local v3, "info":Lcom/tencent/msdk/notice/NoticeInfo;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query result info:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v3, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 446
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 452
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v3    # "info":Lcom/tencent/msdk/notice/NoticeInfo;
    .end local v5    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 453
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getNoticeRecordByMsgId cause exception. sql: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 454
    iget-object v8, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v8}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 455
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v9

    goto/16 :goto_0

    .line 458
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 433
    .restart local v6    # "selection":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->val()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    goto/16 :goto_1

    .line 451
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v5    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7    # "sql":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public getNoticeRecordBySceneAndType(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;Ljava/lang/String;)Ljava/util/Vector;
    .locals 14
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "noticeType"    # Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;
    .param p4, "scene"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/notice/NoticeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "currentTime":Ljava/lang/String;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 370
    .local v6, "noticeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/notice/NoticeInfo;>;"
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 371
    invoke-static {v3}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 372
    :cond_0
    const-string v10, "appId,scene,currentTime maybe null"

    invoke-static {v10}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 411
    :goto_0
    return-object v6

    .line 375
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->checkIsValidType(Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 376
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad noticeType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v11, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v11

    .line 381
    :try_start_0
    sget-object v8, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_type:Ljava/lang/String;

    .line 382
    .local v8, "selection":Ljava/lang/String;
    sget-object v10, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    move-object/from16 v0, p3

    if-ne v10, v0, :cond_3

    .line 383
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " in (0,1,"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->val()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 388
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT * from notice_info where "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/tencent/msdk/db/NoticeDBModel;->col_app_id:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " like \'%"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "%\' AND "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/tencent/msdk/db/NoticeDBModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " in (\'\',\'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\') AND "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_scene:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " AND "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/tencent/msdk/db/NoticeDBModel;->col_start_time:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " < "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " AND "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/tencent/msdk/db/NoticeDBModel;->col_end_time:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " > "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " AND "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " ORDER BY "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_order:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " DESC, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " DESC LIMIT "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/tencent/msdk/db/NoticeDBModel;->NOTICE_SQL_LIMIT:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "; "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 396
    .local v9, "sql":Ljava/lang/String;
    :try_start_1
    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 397
    iget-object v10, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v10}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 398
    .local v7, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 399
    .local v2, "c":Landroid/database/Cursor;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "query result:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 400
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_4

    .line 401
    invoke-direct {p0, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->getColumnData(Landroid/database/Cursor;)Lcom/tencent/msdk/notice/NoticeInfo;

    move-result-object v5

    .line 402
    .local v5, "info":Lcom/tencent/msdk/notice/NoticeInfo;
    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "query result info:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v5, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 400
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 406
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v5    # "info":Lcom/tencent/msdk/notice/NoticeInfo;
    .end local v7    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v4

    .line 407
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getNoticeRecordBySceneAndType cause exception. sql: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 408
    iget-object v10, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v10}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 409
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v11

    goto/16 :goto_0

    .line 412
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 385
    .restart local v8    # "selection":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->val()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    goto/16 :goto_1

    .line 405
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v7    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "sql":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public getRedundancyNoticeListByTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "currentTime"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v13, ""

    .line 144
    .local v13, "msgListString":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const-string v2, "currentTime maybe null"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 146
    const-string v14, ""

    move-object v2, v14

    .line 168
    :goto_0
    return-object v2

    .line 148
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v15

    .line 149
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/msdk/db/NoticeDBModel;->col_end_time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .local v5, "selectionArgs":[Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTimeStamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 154
    .local v1, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "notice_info"

    const/4 v3, 0x0

    sget-object v6, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/tencent/msdk/db/NoticeDBModel;->NOTICE_SQL_LIMIT:Ljava/lang/String;

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 156
    .local v10, "c":Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 157
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/tencent/msdk/db/NoticeDBModel;->getColumnData(Landroid/database/Cursor;)Lcom/tencent/msdk/notice/NoticeInfo;

    move-result-object v12

    .line 159
    .local v12, "info":Lcom/tencent/msdk/notice/NoticeInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 157
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 162
    .end local v1    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v12    # "info":Lcom/tencent/msdk/notice/NoticeInfo;
    :catch_0
    move-exception v11

    .line 163
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRedundancyNoticeListByTime cause exception. Selction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 165
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v13

    .line 168
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "msgListString":Ljava/lang/String;
    .local v14, "msgListString":Ljava/lang/String;
    :goto_2
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v14

    .end local v14    # "msgListString":Ljava/lang/String;
    .restart local v13    # "msgListString":Ljava/lang/String;
    move-object v2, v14

    goto/16 :goto_0

    .line 161
    .restart local v1    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v13

    .line 167
    .end local v13    # "msgListString":Ljava/lang/String;
    .restart local v14    # "msgListString":Ljava/lang/String;
    goto :goto_2

    .line 169
    .end local v1    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v14    # "msgListString":Ljava/lang/String;
    .restart local v13    # "msgListString":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :goto_3
    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .end local v13    # "msgListString":Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "msgListString":Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object v13, v14

    .end local v14    # "msgListString":Ljava/lang/String;
    .restart local v13    # "msgListString":Ljava/lang/String;
    goto :goto_3
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "notice_info"

    return-object v0
.end method

.method public insert(Lcom/tencent/msdk/notice/NoticeInfo;)Z
    .locals 7
    .param p1, "noticeInfo"    # Lcom/tencent/msdk/notice/NoticeInfo;

    .prologue
    const/4 v3, 0x0

    .line 93
    if-nez p1, :cond_0

    .line 94
    const-string v4, "noticeInfo is null"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 108
    :goto_0
    return v3

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v4

    .line 99
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/tencent/msdk/notice/NoticeInfo;->getUsableContentValues(Lcom/tencent/msdk/db/NoticeDBModel;)Landroid/content/ContentValues;

    move-result-object v0

    .line 100
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert, cv = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 102
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "notice_info"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const/4 v3, 0x1

    :try_start_1
    monitor-exit v4

    goto :goto_0

    .line 110
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v5, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 106
    const-string v5, "Insert into notice_info error"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isExisted(Lcom/tencent/msdk/notice/NoticeInfo;)Z
    .locals 13
    .param p1, "noticeInfo"    # Lcom/tencent/msdk/notice/NoticeInfo;

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    const-string v1, "noticeInfo is null"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 270
    const/4 v1, 0x0

    .line 295
    :goto_0
    return v1

    .line 272
    :cond_0
    iget-object v11, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v11

    .line 273
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v12, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " = ? "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v12, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 277
    .local v2, "columns":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 278
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 279
    .local v6, "having":Ljava/lang/String;
    const/4 v7, 0x0

    .line 280
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 281
    .local v8, "limit":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 282
    .local v0, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notice_info"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 284
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 285
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    const/4 v1, 0x1

    :try_start_2
    monitor-exit v11

    goto :goto_0

    .line 297
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v5    # "groupBy":Ljava/lang/String;
    .end local v6    # "having":Ljava/lang/String;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "limit":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 288
    .restart local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v5    # "groupBy":Ljava/lang/String;
    .restart local v6    # "having":Ljava/lang/String;
    .restart local v7    # "orderBy":Ljava/lang/String;
    .restart local v8    # "limit":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    const/4 v1, 0x0

    :try_start_4
    monitor-exit v11

    goto :goto_0

    .line 291
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 292
    .local v10, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isExisted cause exception, Selection: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 294
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 295
    const/4 v1, 0x0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public save(Lcom/tencent/msdk/notice/NoticeInfo;)Z
    .locals 10
    .param p1, "noticeInfo"    # Lcom/tencent/msdk/notice/NoticeInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 239
    if-nez p1, :cond_0

    .line 240
    const-string v6, "noticeInfo is null"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 262
    :goto_0
    return v5

    .line 243
    :cond_0
    iget-object v7, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v7

    .line 244
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/tencent/msdk/db/NoticeDBModel;->col_msg_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    .line 246
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/db/NoticeDBModel;->isExisted(Lcom/tencent/msdk/notice/NoticeInfo;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 249
    const-string v8, "notice has exit!"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, p0}, Lcom/tencent/msdk/notice/NoticeInfo;->getUsableContentValues(Lcom/tencent/msdk/db/NoticeDBModel;)Landroid/content/ContentValues;

    move-result-object v0

    .line 251
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update, cv = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 252
    iget-object v8, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v8}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 253
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "notice_info"

    invoke-virtual {v1, v8, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v6

    goto :goto_0

    .line 256
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/db/NoticeDBModel;->insert(Lcom/tencent/msdk/notice/NoticeInfo;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    :try_start_4
    monitor-exit v7

    goto :goto_0

    .line 264
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 258
    .restart local v3    # "whereArgs":[Ljava/lang/String;
    .restart local v4    # "whereClause":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v6, p0, Lcom/tencent/msdk/db/NoticeDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v6}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save cause exception, Selection: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 261
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 262
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method
