.class public Lcom/tencent/msdk/db/QQLoginModel;
.super Lcom/tencent/msdk/db/BaseUserInfo;
.source "QQLoginModel.java"

# interfaces
.implements Lcom/tencent/msdk/db/ITbl;


# static fields
.field public static final TBL_NAME:Ljava/lang/String; = "qq_login_info"

.field private static col_access_token:Ljava/lang/String;

.field private static col_access_token_expire:Ljava/lang/String;

.field private static col_age:Ljava/lang/String;

.field private static col_avatar:Ljava/lang/String;

.field private static col_create_at:Ljava/lang/String;

.field private static col_gender:Ljava/lang/String;

.field private static col_is_active:Ljava/lang/String;

.field private static col_nickname:Ljava/lang/String;

.field private static col_open_id:Ljava/lang/String;

.field private static col_pay_token:Ljava/lang/String;

.field private static col_pay_token_expire:Ljava/lang/String;

.field private static col_pf:Ljava/lang/String;

.field private static col_pf_key:Ljava/lang/String;

.field private static col_qq:Ljava/lang/String;

.field private static col_update_at:Ljava/lang/String;


# instance fields
.field private helper:Lcom/tencent/msdk/db/DbManager;

.field private mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

.field public pay_token:Ljava/lang/String;

.field public pay_token_expire:J

.field public qq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "open_id"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    .line 43
    const-string v0, "access_token_expire"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token_expire:Ljava/lang/String;

    .line 44
    const-string v0, "access_token"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token:Ljava/lang/String;

    .line 45
    const-string v0, "pay_token"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token:Ljava/lang/String;

    .line 46
    const-string v0, "pay_token_expire"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token_expire:Ljava/lang/String;

    .line 47
    const-string v0, "qq"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_qq:Ljava/lang/String;

    .line 48
    const-string v0, "nickname"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_nickname:Ljava/lang/String;

    .line 49
    const-string v0, "age"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_age:Ljava/lang/String;

    .line 50
    const-string v0, "avatar"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_avatar:Ljava/lang/String;

    .line 51
    const-string v0, "gender"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_gender:Ljava/lang/String;

    .line 52
    const-string v0, "is_active"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_is_active:Ljava/lang/String;

    .line 53
    const-string v0, "create_at"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_create_at:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "update_at"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_update_at:Ljava/lang/String;

    .line 55
    const-string v0, "pf"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_pf:Ljava/lang/String;

    .line 56
    const-string v0, "pf_key"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_pf_key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/tencent/msdk/db/BaseUserInfo;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->qq:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 31
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/tencent/msdk/db/BaseUserInfo;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->qq:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 25
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 27
    return-void
.end method

.method public static getCreateTblSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    const-string v0, ""

    .line 65
    .local v0, "createTblSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CREATE TABLE IF NOT EXISTS [qq_login_info] ("

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(128)  UNIQUE NOT NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token_expire:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] REAL  NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token_expire:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] REAL  NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_qq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] REAL  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(64)  NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_age:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] INTEGER  NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] INTEGER DEFAULT \'\'\'-1\'\'\' NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_is_active:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] BOOLEAN  NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_create_at:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TIMESTAMP  NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_update_at:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(64)  NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_pf_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(128)  NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public static getDropTblSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "DROP TABLE IF EXISTS qq_login_info"

    return-object v0
.end method

.method private getUsableContentValues()Landroid/content/ContentValues;
    .locals 8

    .prologue
    .line 160
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v2, "cv":Landroid/content/ContentValues;
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v3, Lcom/tencent/msdk/a/e;

    invoke-virtual {p0}, Lcom/tencent/msdk/db/QQLoginModel;->gk()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/msdk/a/e;-><init>([B)V

    .line 164
    .local v3, "t":Lcom/tencent/msdk/a/e;
    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/a/e;->f3([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token_expire:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/a/e;->f3([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token_expire:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    :cond_1
    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 175
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_pf:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/a/e;->f3([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_2
    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 179
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_pf_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/a/e;->f3([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    .local v0, "curTime":J
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_create_at:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    return-object v2
.end method


# virtual methods
.method public convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;
    .locals 8

    .prologue
    .line 302
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 303
    .local v0, "lr":Lcom/tencent/msdk/api/LoginRet;
    iget-object v1, p0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    .line 307
    sget v1, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 308
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    new-instance v2, Lcom/tencent/msdk/api/TokenRet;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/tencent/msdk/api/TokenRet;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    new-instance v2, Lcom/tencent/msdk/api/TokenRet;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/tencent/msdk/api/TokenRet;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 312
    return-object v0
.end method

.method public create()Z
    .locals 6

    .prologue
    .line 263
    iget-object v3, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v3

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 267
    .local v1, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "qq_login_info"

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/tencent/msdk/db/QQLoginModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const/4 v2, 0x1

    :try_start_1
    monitor-exit v3

    .line 273
    .end local v1    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    const-string v2, "Insert into qq_login_info error"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 273
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public delete()I
    .locals 8

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "howManyDeleted":I
    iget-object v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 283
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " `"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "` = ? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    aput-object v7, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 287
    .local v2, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "qq_login_info"

    invoke-virtual {v2, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 294
    .end local v2    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    :try_start_2
    monitor-exit v6

    .line 298
    return v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete error. Selection:"

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

    .line 292
    const/4 v1, 0x0

    goto :goto_0

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
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
    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "howManyDeleted":I
    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v4

    .line 321
    :try_start_0
    iget-object v3, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 322
    .local v2, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "qq_login_info"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 329
    .end local v2    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 332
    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 325
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    const-string v3, "QQLoginModel deleteAll error."

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x0

    goto :goto_0

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
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
    .line 239
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
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastQQLoginUserinfo()Lcom/tencent/msdk/db/QQLoginModel;
    .locals 20

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 97
    :try_start_0
    new-instance v13, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v13}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .local v13, "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    const/4 v4, 0x0

    .line 100
    .local v4, "columns":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 101
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 102
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 103
    .local v7, "groupBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 104
    .local v8, "having":Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " `"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v18, Lcom/tencent/msdk/db/QQLoginModel;->col_create_at:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "` DESC "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, "orderBy":Ljava/lang/String;
    const-string v10, " 1 "

    .line 106
    .local v10, "limit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 107
    .local v2, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "qq_login_info"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 109
    .local v15, "rows":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 110
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    const/4 v13, 0x0

    .end local v13    # "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .end local v2    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v15    # "rows":Landroid/database/Cursor;
    :goto_0
    return-object v13

    .line 113
    .restart local v2    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "orderBy":Ljava/lang/String;
    .restart local v10    # "limit":Ljava/lang/String;
    .restart local v13    # "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    .restart local v15    # "rows":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    new-instance v16, Lcom/tencent/msdk/a/e;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/db/QQLoginModel;->gk()[B

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/tencent/msdk/a/e;-><init>([B)V

    .line 115
    .local v16, "t":Lcom/tencent/msdk/a/e;
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/a/e;->f2(Ljava/lang/String;)[B

    move-result-object v11

    .line 116
    .local v11, "a":[B
    if-eqz v11, :cond_1

    .line 117
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    .line 119
    :cond_1
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/a/e;->f2(Ljava/lang/String;)[B

    move-result-object v11

    .line 120
    if-eqz v11, :cond_2

    .line 121
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 123
    :cond_2
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_pf:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/a/e;->f2(Ljava/lang/String;)[B

    move-result-object v11

    .line 124
    if-eqz v11, :cond_3

    .line 125
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    .line 127
    :cond_3
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_pf_key:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/a/e;->f2(Ljava/lang/String;)[B

    move-result-object v11

    .line 128
    if-eqz v11, :cond_4

    .line 129
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    .line 131
    :cond_4
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 132
    .local v14, "openid":Ljava/lang/String;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v3, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v3, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v3, v18

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v3, v18

    invoke-static {v3}, Lcom/tencent/msdk/tools/T;->ckNonEmpty([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    if-nez v3, :cond_7

    const-string v3, ""

    :goto_1
    iput-object v3, v13, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    if-nez v3, :cond_8

    const-string v3, ""

    :goto_2
    iput-object v3, v13, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    if-nez v3, :cond_9

    const-string v3, ""

    :goto_3
    iput-object v3, v13, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    if-nez v3, :cond_a

    const-string v3, ""

    :goto_4
    iput-object v3, v13, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    .line 140
    :cond_5
    if-nez v14, :cond_6

    const-string v14, ""

    .end local v14    # "openid":Ljava/lang/String;
    :cond_6
    iput-object v14, v13, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    .line 141
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token_expire:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    .line 144
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token_expire:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 146
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_create_at:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/tencent/msdk/db/QQLoginModel;->create_at:J

    .line 148
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    .end local v2    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v11    # "a":[B
    .end local v15    # "rows":Landroid/database/Cursor;
    .end local v16    # "t":Lcom/tencent/msdk/a/e;
    :goto_5
    :try_start_4
    monitor-exit v17

    goto/16 :goto_0

    .line 156
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "groupBy":Ljava/lang/String;
    .end local v8    # "having":Ljava/lang/String;
    .end local v13    # "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 133
    .restart local v2    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "groupBy":Ljava/lang/String;
    .restart local v8    # "having":Ljava/lang/String;
    .restart local v9    # "orderBy":Ljava/lang/String;
    .restart local v10    # "limit":Ljava/lang/String;
    .restart local v11    # "a":[B
    .restart local v13    # "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    .restart local v14    # "openid":Ljava/lang/String;
    .restart local v15    # "rows":Landroid/database/Cursor;
    .restart local v16    # "t":Lcom/tencent/msdk/a/e;
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    goto :goto_1

    .line 135
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    goto :goto_2

    .line 137
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    goto :goto_3

    .line 138
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 149
    .end local v2    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v11    # "a":[B
    .end local v14    # "openid":Ljava/lang/String;
    .end local v15    # "rows":Landroid/database/Cursor;
    .end local v16    # "t":Lcom/tencent/msdk/a/e;
    :catch_0
    move-exception v12

    .line 150
    .local v12, "e":Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 151
    const-string v3, "getLastQQLoginUserinfo cause exception"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "qq_login_info"

    return-object v0
.end method

.method public getWakeupRet()Lcom/tencent/msdk/api/WakeupRet;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    return-object v0
.end method

.method public isExisted()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 189
    iget-object v13, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v13

    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, "columns":[Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v14, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, " = ? "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v14, p0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    aput-object v14, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 195
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 196
    .local v6, "having":Ljava/lang/String;
    const/4 v7, 0x0

    .line 197
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 200
    .local v8, "limit":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 201
    .local v0, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "qq_login_info"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 203
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 204
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v11

    .line 213
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v1

    .line 207
    .restart local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    :try_start_4
    monitor-exit v13

    move v1, v12

    goto :goto_0

    .line 210
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 211
    .local v10, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isExisted error. Selection:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 213
    monitor-exit v13

    move v1, v11

    goto :goto_0

    .line 215
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
    invoke-virtual {p0}, Lcom/tencent/msdk/db/QQLoginModel;->deleteAll()I

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "flag":Z
    invoke-virtual {p0}, Lcom/tencent/msdk/db/QQLoginModel;->isExisted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/tencent/msdk/db/QQLoginModel;->update()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/msdk/db/QQLoginModel;->create()Z

    move-result v0

    goto :goto_0
.end method

.method public setWakeUpRet(Lcom/tencent/msdk/api/WakeupRet;)V
    .locals 0
    .param p1, "ret"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/tencent/msdk/db/QQLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 337
    return-void
.end method

.method public update()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 220
    iget-object v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 222
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/msdk/db/QQLoginModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 223
    .local v1, "values":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "` = ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    aput-object v8, v3, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 227
    .local v2, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "qq_login_info"

    invoke-virtual {v2, v7, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    :try_start_2
    monitor-exit v6

    .line 232
    .end local v2    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v5

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QQLoginModel update error. Selection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 231
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 230
    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 232
    monitor-exit v6

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
