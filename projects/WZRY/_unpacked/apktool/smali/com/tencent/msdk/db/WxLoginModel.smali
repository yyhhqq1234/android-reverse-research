.class public Lcom/tencent/msdk/db/WxLoginModel;
.super Lcom/tencent/msdk/db/BaseUserInfo;
.source "WxLoginModel.java"

# interfaces
.implements Lcom/tencent/msdk/db/ITbl;


# static fields
.field static final TBL_NAME:Ljava/lang/String; = "wx_login_info"

.field private static col_access_token:Ljava/lang/String;

.field private static col_access_token_expire:Ljava/lang/String;

.field private static col_age:Ljava/lang/String;

.field private static col_avatar:Ljava/lang/String;

.field private static col_create_at:Ljava/lang/String;

.field private static col_gender:Ljava/lang/String;

.field private static col_is_active:Ljava/lang/String;

.field private static col_nickname:Ljava/lang/String;

.field private static col_open_id:Ljava/lang/String;

.field private static col_pf:Ljava/lang/String;

.field private static col_pf_key:Ljava/lang/String;

.field private static col_refresh_token:Ljava/lang/String;

.field private static col_refresh_token_expire:Ljava/lang/String;

.field private static col_update_at:Ljava/lang/String;

.field private static col_wechat_uin:Ljava/lang/String;

.field public static volatile instance:Lcom/tencent/msdk/db/WxLoginModel;


# instance fields
.field private helper:Lcom/tencent/msdk/db/DbManager;

.field private mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

.field public refresh_token:Ljava/lang/String;

.field public refresh_token_expire:J

.field public wechat_uin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "open_id"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    .line 34
    const-string v0, "access_token_expire"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token_expire:Ljava/lang/String;

    .line 35
    const-string v0, "access_token"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token:Ljava/lang/String;

    .line 36
    const-string v0, "refresh_token"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token:Ljava/lang/String;

    .line 37
    const-string v0, "refresh_token_expire"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token_expire:Ljava/lang/String;

    .line 38
    const-string v0, "pf"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_pf:Ljava/lang/String;

    .line 39
    const-string v0, "pf_key"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_pf_key:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "wechat_uin"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_wechat_uin:Ljava/lang/String;

    .line 41
    const-string v0, "nickname"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_nickname:Ljava/lang/String;

    .line 42
    const-string v0, "age"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_age:Ljava/lang/String;

    .line 43
    const-string v0, "avatar"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_avatar:Ljava/lang/String;

    .line 44
    const-string v0, "gender"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_gender:Ljava/lang/String;

    .line 45
    const-string v0, "is_active"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_is_active:Ljava/lang/String;

    .line 46
    const-string v0, "create_at"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_create_at:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "update_at"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_update_at:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/msdk/db/BaseUserInfo;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->wechat_uin:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/msdk/db/BaseUserInfo;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->wechat_uin:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 23
    return-void
.end method

.method public static getCreateTblSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    const-string v0, ""

    .line 78
    .local v0, "createTblSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CREATE TABLE IF NOT EXISTS [wx_login_info] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(128)  UNIQUE NOT NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token_expire:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] REAL  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token_expire:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] REAL  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(64)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_pf_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(128)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_wechat_uin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(64)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(64)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_age:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] INTEGER  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] INTEGER DEFAULT -1 NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_is_active:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] BOOLEAN  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_create_at:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TIMESTAMP  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_update_at:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method public static getDropTblSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "DROP TABLE IF EXISTS wx_login_info"

    return-object v0
.end method

.method private getUsableContentValues()Landroid/content/ContentValues;
    .locals 8

    .prologue
    .line 169
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v2, "cv":Landroid/content/ContentValues;
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v3, Lcom/tencent/msdk/a/e;

    invoke-virtual {p0}, Lcom/tencent/msdk/db/WxLoginModel;->gk()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/msdk/a/e;-><init>([B)V

    .line 173
    .local v3, "t":Lcom/tencent/msdk/a/e;
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/a/e;->f3([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token_expire:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    :cond_0
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/a/e;->f3([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token_expire:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 184
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_pf:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/a/e;->f3([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_2
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 188
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_pf_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/a/e;->f3([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 191
    .local v0, "curTime":J
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_create_at:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    return-object v2
.end method


# virtual methods
.method public convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;
    .locals 8

    .prologue
    .line 295
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 296
    .local v0, "lr":Lcom/tencent/msdk/api/LoginRet;
    iget-object v1, p0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    .line 297
    iget-object v1, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    .line 300
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 301
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    new-instance v2, Lcom/tencent/msdk/api/TokenRet;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/tencent/msdk/api/TokenRet;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    new-instance v2, Lcom/tencent/msdk/api/TokenRet;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/tencent/msdk/api/TokenRet;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 305
    return-object v0
.end method

.method public create()Z
    .locals 8

    .prologue
    .line 207
    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v5

    .line 210
    :try_start_0
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v4}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v4, "wx_login_info"

    const/4 v6, 0x0

    .line 212
    invoke-direct {p0}, Lcom/tencent/msdk/db/WxLoginModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 211
    invoke-virtual {v0, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 213
    .local v2, "insertResult":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    const/4 v4, 0x1

    :try_start_1
    monitor-exit v5

    .line 219
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "insertResult":J
    :goto_0
    return v4

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v4}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 217
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    const-string v4, "WXLoginModel create error"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 219
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public delete()I
    .locals 8

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "howManyDeleted":I
    iget-object v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 58
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " `"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "` = ? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    aput-object v7, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v5, "wx_login_info"

    invoke-virtual {v0, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 69
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    :try_start_2
    monitor-exit v6

    .line 73
    return v2

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete error,, Selection: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public deleteAll()I
    .locals 7

    .prologue
    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, "howManyDeleted":I
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v4

    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 314
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v3, "wx_login_info"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 321
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 325
    return v2

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 317
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    const/4 v2, 0x0

    .line 319
    const-string v3, "WxLoginModel deleteAll error."

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public find()Lcom/tencent/msdk/db/BaseUserInfo;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAll()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/db/BaseUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastWxLoginUserinfo()Lcom/tencent/msdk/db/WxLoginModel;
    .locals 19

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 106
    :try_start_0
    new-instance v13, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v13}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .local v13, "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    const/4 v4, 0x0

    .line 109
    .local v4, "columns":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 110
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 111
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 112
    .local v7, "groupBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 113
    .local v8, "having":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/msdk/db/WxLoginModel;->col_create_at:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "` DESC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "orderBy":Ljava/lang/String;
    const-string v10, "1"

    .line 115
    .local v10, "limit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "wx_login_info"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 118
    .local v15, "rows":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    const/4 v13, 0x0

    .end local v13    # "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v15    # "rows":Landroid/database/Cursor;
    :goto_0
    return-object v13

    .line 122
    .restart local v9    # "orderBy":Ljava/lang/String;
    .restart local v10    # "limit":Ljava/lang/String;
    .restart local v13    # "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    .restart local v15    # "rows":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 123
    new-instance v16, Lcom/tencent/msdk/a/e;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/db/WxLoginModel;->gk()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/tencent/msdk/a/e;-><init>([B)V

    .line 124
    .local v16, "t":Lcom/tencent/msdk/a/e;
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 125
    .local v14, "open_id":Ljava/lang/String;
    if-nez v14, :cond_1

    const-string v14, ""

    .end local v14    # "open_id":Ljava/lang/String;
    :cond_1
    iput-object v14, v13, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    .line 127
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/tencent/msdk/a/e;->f2(Ljava/lang/String;)[B

    move-result-object v11

    .line 128
    .local v11, "a":[B
    if-eqz v11, :cond_2

    .line 129
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    .line 131
    :cond_2
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/tencent/msdk/a/e;->f2(Ljava/lang/String;)[B

    move-result-object v11

    .line 132
    if-eqz v11, :cond_3

    .line 133
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    .line 135
    :cond_3
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_pf:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/tencent/msdk/a/e;->f2(Ljava/lang/String;)[B

    move-result-object v11

    .line 136
    if-eqz v11, :cond_4

    .line 137
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    .line 139
    :cond_4
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_pf_key:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/tencent/msdk/a/e;->f2(Ljava/lang/String;)[B

    move-result-object v11

    .line 140
    if-eqz v11, :cond_5

    .line 141
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    .line 144
    :cond_5
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v2, v3

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckNonEmpty([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, ""

    :goto_1
    iput-object v2, v13, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, ""

    :goto_2
    iput-object v2, v13, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v2, ""

    :goto_3
    iput-object v2, v13, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, ""

    :goto_4
    iput-object v2, v13, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    .line 153
    :cond_6
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token_expire:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v13, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    .line 154
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token_expire:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v13, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    .line 155
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_create_at:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v13, Lcom/tencent/msdk/db/WxLoginModel;->create_at:J

    .line 158
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v11    # "a":[B
    .end local v15    # "rows":Landroid/database/Cursor;
    .end local v16    # "t":Lcom/tencent/msdk/a/e;
    :goto_5
    :try_start_4
    monitor-exit v17

    goto/16 :goto_0

    .line 165
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "groupBy":Ljava/lang/String;
    .end local v8    # "having":Ljava/lang/String;
    .end local v13    # "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 145
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "groupBy":Ljava/lang/String;
    .restart local v8    # "having":Ljava/lang/String;
    .restart local v9    # "orderBy":Ljava/lang/String;
    .restart local v10    # "limit":Ljava/lang/String;
    .restart local v11    # "a":[B
    .restart local v13    # "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    .restart local v15    # "rows":Landroid/database/Cursor;
    .restart local v16    # "t":Lcom/tencent/msdk/a/e;
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    goto :goto_1

    .line 147
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    goto :goto_2

    .line 149
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    goto :goto_3

    .line 150
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 159
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v11    # "a":[B
    .end local v15    # "rows":Landroid/database/Cursor;
    .end local v16    # "t":Lcom/tencent/msdk/a/e;
    :catch_0
    move-exception v12

    .line 160
    .local v12, "e":Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 161
    const-string v2, "getLastWxLoginUserinfo cause exception"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string/jumbo v0, "wx_login_info"

    return-object v0
.end method

.method public getWakeupRet()Lcom/tencent/msdk/api/WakeupRet;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    return-object v0
.end method

.method public isExisted()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 264
    iget-object v13, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v13

    .line 266
    const/4 v2, 0x0

    .line 267
    .local v2, "columns":[Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v14, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, " = ? "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v14, p0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    aput-object v14, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 270
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 271
    .local v6, "having":Ljava/lang/String;
    const/4 v7, 0x0

    .line 272
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 275
    .local v8, "limit":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 276
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "wx_login_info"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 278
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 279
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v11

    .line 289
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v1

    .line 282
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    :try_start_4
    monitor-exit v13

    move v1, v12

    goto :goto_0

    .line 285
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 286
    .local v10, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WxLoginModel isExisted error, Selection: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 288
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 289
    monitor-exit v13

    move v1, v11

    goto :goto_0

    .line 291
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "groupBy":Ljava/lang/String;
    .end local v6    # "having":Ljava/lang/String;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "limit":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public save()Z
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/tencent/msdk/db/WxLoginModel;->deleteAll()I

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "flag":Z
    invoke-virtual {p0}, Lcom/tencent/msdk/db/WxLoginModel;->isExisted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/tencent/msdk/db/WxLoginModel;->update()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/msdk/db/WxLoginModel;->create()Z

    move-result v0

    goto :goto_0
.end method

.method public setWakeUpRet(Lcom/tencent/msdk/api/WakeupRet;)V
    .locals 0
    .param p1, "ret"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/tencent/msdk/db/WxLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 330
    return-void
.end method

.method public update()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 231
    iget-object v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 232
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/msdk/db/WxLoginModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 233
    .local v2, "values":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "` = ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    aput-object v8, v3, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 237
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v7, "wx_login_info"

    invoke-virtual {v0, v7, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    :try_start_2
    monitor-exit v6

    .line 242
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v5

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WxLoginModel update error, Selection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 241
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 242
    monitor-exit v6

    goto :goto_0

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
