.class public final enum Lcom/netease/mpay/widget/ar$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/widget/ar$a;

.field public static final enum b:Lcom/netease/mpay/widget/ar$a;

.field public static final enum c:Lcom/netease/mpay/widget/ar$a;

.field private static final synthetic d:[Lcom/netease/mpay/widget/ar$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/mpay/widget/ar$a;

    const-string v1, "FACEBOOK_APP_ID"

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/ar$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/ar$a;->a:Lcom/netease/mpay/widget/ar$a;

    new-instance v0, Lcom/netease/mpay/widget/ar$a;

    const-string v1, "GOOGLE_GMS_VERSION"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/widget/ar$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/ar$a;->b:Lcom/netease/mpay/widget/ar$a;

    new-instance v0, Lcom/netease/mpay/widget/ar$a;

    const-string v1, "GOOGLE_SERVICE_CLIENT_ID"

    invoke-direct {v0, v1, v4}, Lcom/netease/mpay/widget/ar$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/ar$a;->c:Lcom/netease/mpay/widget/ar$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/mpay/widget/ar$a;

    sget-object v1, Lcom/netease/mpay/widget/ar$a;->a:Lcom/netease/mpay/widget/ar$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/widget/ar$a;->b:Lcom/netease/mpay/widget/ar$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/mpay/widget/ar$a;->c:Lcom/netease/mpay/widget/ar$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netease/mpay/widget/ar$a;->d:[Lcom/netease/mpay/widget/ar$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/widget/ar$a;
    .locals 1

    const-class v0, Lcom/netease/mpay/widget/ar$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/ar$a;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/widget/ar$a;
    .locals 1

    sget-object v0, Lcom/netease/mpay/widget/ar$a;->d:[Lcom/netease/mpay/widget/ar$a;

    invoke-virtual {v0}, [Lcom/netease/mpay/widget/ar$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/widget/ar$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/netease/mpay/widget/as;->a:[I

    invoke-virtual {p0}, Lcom/netease/mpay/widget/ar$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "com.facebook.sdk.ApplicationId"

    goto :goto_0

    :pswitch_1
    const-string v0, "com.google.android.gms.version"

    goto :goto_0

    :pswitch_2
    const-string v0, "com.netease.mpay.GOOGLE_SERVER_CLIENT_ID"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
