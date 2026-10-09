.class public Lcom/bytedance/applog/UriConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/UriConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/applog/UriConfig;
    .locals 2

    new-instance v0, Lcom/bytedance/applog/UriConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/applog/UriConfig;-><init>(Lcom/bytedance/applog/UriConfig$Builder;Lcom/bytedance/applog/UriConfig$a;)V

    return-object v0
.end method

.method public setALinkAttributionUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method public setALinkQueryUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public setAbUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setActiveUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setBusinessUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setIDBindUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setProfileUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setRegisterUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setReportOaidUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setSendUris([Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig$Builder;->d:[Ljava/lang/String;

    return-object p0
.end method

.method public setSettingUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/UriConfig$Builder;->e:Ljava/lang/String;

    return-object p0
.end method
