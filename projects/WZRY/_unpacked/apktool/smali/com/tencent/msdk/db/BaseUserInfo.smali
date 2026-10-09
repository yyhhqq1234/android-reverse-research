.class public abstract Lcom/tencent/msdk/db/BaseUserInfo;
.super Ljava/lang/Object;
.source "BaseUserInfo.java"


# static fields
.field public static final SCENES_TYPE_AUTO:I = 0x2

.field public static final SCENES_TYPE_FIRST:I = 0x1

.field public static final SCENES_TYPE_THIRD:I = 0x4

.field public static final SCENES_TYPE_TIMER:I = 0x3


# instance fields
.field protected final MSDK_UUID:Ljava/lang/String;

.field public access_token:Ljava/lang/String;

.field public access_token_expire:J

.field public age:I

.field public avatar:Ljava/lang/String;

.field public create_at:J

.field public gender:I

.field public is_active:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public open_id:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pf_key:Ljava/lang/String;

.field public scenes:I

.field public update_at:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "msdk_res_id"

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->MSDK_UUID:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->scenes:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->open_id:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token:Ljava/lang/String;

    .line 22
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token_expire:J

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf_key:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->is_active:Ljava/lang/String;

    .line 30
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->create_at:J

    .line 31
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->update_at:J

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->nickname:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->age:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->avatar:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->gender:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "msdk_res_id"

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->MSDK_UUID:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->scenes:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->open_id:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token:Ljava/lang/String;

    .line 22
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token_expire:J

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf_key:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->is_active:Ljava/lang/String;

    .line 30
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->create_at:J

    .line 31
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->update_at:J

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->nickname:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->age:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->avatar:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->gender:I

    .line 41
    iput-object p1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->open_id:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public abstract convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;
.end method

.method protected getIntByName(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected gk()[B
    .locals 6

    .prologue
    .line 63
    const-string v1, ""

    .line 66
    .local v1, "k":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "msdk_res_id"

    const-string v5, ""

    .line 65
    invoke-static {v3, v4, v5}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "uuid":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "msdk_res_id"

    .line 70
    invoke-static {v3, v4, v2}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    move-object v1, v2

    .line 78
    .end local v2    # "uuid":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/tencent/msdk/a/a;->b(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string v1, ""

    goto :goto_0
.end method
