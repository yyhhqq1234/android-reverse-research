.class public final Lcom/netease/mobile/link/m4;
.super Lcom/netease/mobile/link/f5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/f5<",
        "Lcom/netease/mobile/link/q5;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroid/app/Activity;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mobile/link/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/mobile/link/n<",
            "Lcom/netease/mobile/link/q5;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/netease/mobile/link/f5;-><init>(Lcom/netease/mobile/link/t4;Lcom/netease/mobile/link/n;)V

    iput-object p1, p0, Lcom/netease/mobile/link/m4;->c:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getNetworkType(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "operatortype"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "china_telecom"

    goto :goto_0

    :cond_2
    const-string v0, "china_unicom"

    goto :goto_0

    :cond_3
    const-string v0, "china_mobile"

    :goto_0
    const-string v4, "networktype"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-eq v3, p0, :cond_5

    if-ne v2, p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    move-object v1, v0

    :cond_6
    :goto_2
    return-object v1
.end method


# virtual methods
.method public final b()Lcom/netease/mobile/link/v4;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/q5;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->f:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/netease/mobile/link/m4;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nis/quicklogin/QuickLogin;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/nis/quicklogin/QuickLogin;

    move-result-object v0

    const-string v1, "MobileLink"

    const-string v2, "prefetchMobile: prefetch start"

    .line 3
    invoke-static {v1, v2}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->setPrefetchNumberTimeout(I)V

    new-instance v2, Lcom/netease/mobile/link/l6;

    invoke-direct {v2}, Lcom/netease/mobile/link/l6;-><init>()V

    new-instance v3, Lcom/netease/mobile/link/l4;

    invoke-direct {v3, p0, v2}, Lcom/netease/mobile/link/l4;-><init>(Lcom/netease/mobile/link/m4;Lcom/netease/mobile/link/l6;)V

    invoke-virtual {v0, v3}, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchMobileNumber(Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V

    const/16 v0, 0xbb8

    int-to-long v3, v0

    .line 5
    iput-wide v3, v2, Lcom/netease/mobile/link/l6;->d:J

    .line 6
    invoke-virtual {v2}, Lcom/netease/mobile/link/l6;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefetchMobile: mPrefetchResult = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/mobile/link/m4;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, v2, Lcom/netease/mobile/link/l6;->b:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/netease/mobile/link/q5;

    invoke-direct {v0}, Lcom/netease/mobile/link/q5;-><init>()V

    iget-object v1, p0, Lcom/netease/mobile/link/m4;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mobile/link/q5;->a:Ljava/lang/String;

    new-instance v1, Lcom/netease/mobile/link/v4;

    invoke-direct {v1}, Lcom/netease/mobile/link/v4;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netease/mobile/link/v4;->a(Ljava/lang/Object;)Lcom/netease/mobile/link/v4;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/netease/mobile/link/v4;

    invoke-direct {v0}, Lcom/netease/mobile/link/v4;-><init>()V

    const/16 v1, 0x194

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/netease/mobile/link/v4;->a(ILjava/lang/String;)Lcom/netease/mobile/link/v4;

    move-result-object v0

    return-object v0
.end method
