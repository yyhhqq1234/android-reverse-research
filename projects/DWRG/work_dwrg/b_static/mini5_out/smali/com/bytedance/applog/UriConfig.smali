.class public Lcom/bytedance/applog/UriConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/UriConfig$Builder;
    }
.end annotation


# static fields
.field public static final DOMAIN_BUSINESS:Ljava/lang/String; = "https://log-api.oceanengine.com"

.field public static final PATH_AB:Ljava/lang/String; = "/service/2/abtest_config/"

.field public static final PATH_ACTIVE:Ljava/lang/String; = "/service/2/app_alert_check/"

.field public static final PATH_ALINK_ATTRIBUTION:Ljava/lang/String; = "/service/2/attribution_data"

.field public static final PATH_ALINK_QUERY:Ljava/lang/String; = "/service/2/alink_data"

.field public static final PATH_CONFIG:Ljava/lang/String; = "/service/2/log_settings/"

.field public static final PATH_DEVICE_UPDATE:Ljava/lang/String; = "/service/2/device_update"

.field public static final PATH_ID_BIND:Ljava/lang/String; = "/service/2/id_bind"

.field public static final PATH_PROFILE:Ljava/lang/String; = "/service/2/profile/"

.field public static final PATH_REGISTER:Ljava/lang/String; = "/service/2/device_register/"

.field public static final PATH_SEND:Ljava/lang/String; = "/service/2/app_log/"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/applog/UriConfig$Builder;Lcom/bytedance/applog/UriConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->a:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->b:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->c:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->c:Ljava/lang/String;

    .line 8
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->d:[Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->d:[Ljava/lang/String;

    .line 10
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->e:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->e:Ljava/lang/String;

    .line 12
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->f:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->f:Ljava/lang/String;

    .line 14
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->g:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->g:Ljava/lang/String;

    .line 16
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->h:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->h:Ljava/lang/String;

    .line 18
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->i:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->i:Ljava/lang/String;

    .line 20
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->j:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->j:Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lcom/bytedance/applog/UriConfig$Builder;->k:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->k:Ljava/lang/String;

    return-void
.end method

.method public static createByDomain(Ljava/lang/String;[Ljava/lang/String;)Lcom/bytedance/applog/UriConfig;
    .locals 7

    new-instance v0, Lcom/bytedance/applog/UriConfig$Builder;

    invoke-direct {v0}, Lcom/bytedance/applog/UriConfig$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/service/2/device_register/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setRegisterUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/service/2/device_update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/applog/UriConfig$Builder;->setReportOaidUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/service/2/app_alert_check/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/applog/UriConfig$Builder;->setActiveUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/service/2/attribution_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkAttributionUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/service/2/alink_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkQueryUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    const/4 v1, 0x0

    const-string v2, "/service/2/app_log/"

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    array-length v4, p1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    array-length v4, p1

    add-int/2addr v4, v3

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {p0, v2}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    :goto_0
    if-ge v3, v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v3, -0x1

    aget-object v6, p1, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Lcom/bytedance/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    goto :goto_2

    :cond_2
    :goto_1
    new-array p1, v3, [Ljava/lang/String;

    invoke-static {p0, v2}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/service/2/log_settings/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/UriConfig$Builder;->setSettingUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/service/2/abtest_config/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setAbUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/service/2/profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setProfileUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/service/2/id_bind"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/applog/UriConfig$Builder;->setIDBindUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig$Builder;->build()Lcom/bytedance/applog/UriConfig;

    move-result-object p0

    return-object p0
.end method

.method public static createUriConfig(I)Lcom/bytedance/applog/UriConfig;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/applog/util/UriConstants;->createUriConfig(I)Lcom/bytedance/applog/UriConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAbUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAlinkAttributionUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getAlinkQueryUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getIDBindUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getReportOaidUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSendUris()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/ttgame/tob/gradle/applog/AppLogVerifyUtils;->isVerifyOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/ttgame/tob/gradle/applog/AppLogVerifyUtils;->getSendUris()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setALinkAttributionUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->j:Ljava/lang/String;

    return-void
.end method

.method public setALinkQueryUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->i:Ljava/lang/String;

    return-void
.end method

.method public setAbUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->f:Ljava/lang/String;

    return-void
.end method

.method public setActiveUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public setBusinessUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->h:Ljava/lang/String;

    return-void
.end method

.method public setProfileUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->g:Ljava/lang/String;

    return-void
.end method

.method public setRegisterUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->a:Ljava/lang/String;

    return-void
.end method

.method public setReportOaidUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public setSendUris([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->d:[Ljava/lang/String;

    return-void
.end method

.method public setSettingUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->e:Ljava/lang/String;

    return-void
.end method
