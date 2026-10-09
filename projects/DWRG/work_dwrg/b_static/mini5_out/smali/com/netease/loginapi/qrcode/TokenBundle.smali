.class public Lcom/netease/loginapi/qrcode/TokenBundle;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/netease/loginapi/expose/Reserved;


# instance fields
.field public token:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/TokenBundle;->token:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/loginapi/qrcode/TokenBundle;->username:Ljava/lang/String;

    return-void
.end method

.method public static intentKey()Ljava/lang/String;
    .locals 1

    const-string v0, "INTENT_TOKEN_BUNDLE"

    return-object v0
.end method

.method public static intentListKey()Ljava/lang/String;
    .locals 1

    const-string v0, "INTENT_TOKEN_BUNDLE_LIST"

    return-object v0
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/TokenBundle;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/TokenBundle;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/TokenBundle;->token:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/TokenBundle;->username:Ljava/lang/String;

    return-void
.end method

.method public verify()Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/TokenBundle;->getToken()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/TokenBundle;->getUsername()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/netease/loginapi/util/Commons;->notEmpty([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
