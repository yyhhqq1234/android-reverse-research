.class public Lcom/tencent/mid/api/MidEntity;
.super Ljava/lang/Object;


# static fields
.field public static final TAG_GUID:Ljava/lang/String; = "guid"

.field public static final TAG_IMEI:Ljava/lang/String; = "imei"

.field public static final TAG_IMSI:Ljava/lang/String; = "imsi"

.field public static final TAG_MAC:Ljava/lang/String; = "mac"

.field public static final TAG_MID:Ljava/lang/String; = "mid"

.field public static final TAG_TIMESTAMPS:Ljava/lang/String; = "ts"

.field public static final TAG_VER:Ljava/lang/String; = "ver"

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_NEW:I = 0x2

.field private static a:Lcom/tencent/mid/util/f;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/f;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/api/MidEntity;->a:Lcom/tencent/mid/util/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mid/api/MidEntity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mid/api/MidEntity;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mid/api/MidEntity;->d:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/mid/api/MidEntity;->e:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/mid/api/MidEntity;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mid/api/MidEntity;->g:I

    iput-wide v2, p0, Lcom/tencent/mid/api/MidEntity;->h:J

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/tencent/mid/api/MidEntity;
    .locals 6

    new-instance v1, Lcom/tencent/mid/api/MidEntity;

    invoke-direct {v1}, Lcom/tencent/mid/api/MidEntity;-><init>()V

    invoke-static {p0}, Lcom/tencent/mid/util/Util;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "imei"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "imei"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/api/MidEntity;->setImei(Ljava/lang/String;)V

    :cond_0
    const-string v2, "imsi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "imsi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/api/MidEntity;->setImsi(Ljava/lang/String;)V

    :cond_1
    const-string v2, "mac"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mac"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/api/MidEntity;->setMac(Ljava/lang/String;)V

    :cond_2
    const-string v2, "mid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "mid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/api/MidEntity;->setMid(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v2, "ts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "ts"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    :cond_4
    const-string/jumbo v2, "ver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "ver"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/tencent/mid/api/MidEntity;->g:I

    :cond_5
    const-string v2, "guid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "guid"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/mid/api/MidEntity;->h:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/mid/api/MidEntity;->a:Lcom/tencent/mid/util/f;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mid/util/f;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "imei"

    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imsi"

    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mac"

    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mid"

    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->e:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "guid"

    iget-wide v2, p0, Lcom/tencent/mid/api/MidEntity;->h:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    const-string/jumbo v0, "ts"

    iget-wide v2, p0, Lcom/tencent/mid/api/MidEntity;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/tencent/mid/api/MidEntity;->a:Lcom/tencent/mid/util/f;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mid/util/f;->d(Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public compairTo(Lcom/tencent/mid/api/MidEntity;)I
    .locals 6

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mid/api/MidEntity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/tencent/mid/api/MidEntity;->f:J

    iget-wide v4, p1, Lcom/tencent/mid/api/MidEntity;->f:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getGuid()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mid/api/MidEntity;->h:J

    return-wide v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamps()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mid/api/MidEntity;->f:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/tencent/mid/api/MidEntity;->g:I

    return v0
.end method

.method public isMidValid()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setGuid(J)V
    .locals 1

    iput-wide p1, p0, Lcom/tencent/mid/api/MidEntity;->h:J

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mid/api/MidEntity;->b:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mid/api/MidEntity;->c:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mid/api/MidEntity;->d:Ljava/lang/String;

    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mid/api/MidEntity;->e:Ljava/lang/String;

    return-void
.end method

.method public setTimestamps(J)V
    .locals 1

    iput-wide p1, p0, Lcom/tencent/mid/api/MidEntity;->f:J

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mid/api/MidEntity;->g:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mid/api/MidEntity;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
