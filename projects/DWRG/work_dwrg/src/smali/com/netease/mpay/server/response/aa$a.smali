.class public final enum Lcom/netease/mpay/server/response/aa$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/server/response/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/server/response/aa$a;

.field public static final enum b:Lcom/netease/mpay/server/response/aa$a;

.field public static final enum c:Lcom/netease/mpay/server/response/aa$a;

.field private static final synthetic e:[Lcom/netease/mpay/server/response/aa$a;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/netease/mpay/server/response/aa$a;

    const-string v1, "QRCODE_UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/netease/mpay/server/response/aa$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/mpay/server/response/aa$a;->a:Lcom/netease/mpay/server/response/aa$a;

    new-instance v0, Lcom/netease/mpay/server/response/aa$a;

    const-string v1, "QRCODE_LOGIN"

    invoke-direct {v0, v1, v3, v3}, Lcom/netease/mpay/server/response/aa$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/mpay/server/response/aa$a;->b:Lcom/netease/mpay/server/response/aa$a;

    new-instance v0, Lcom/netease/mpay/server/response/aa$a;

    const-string v1, "QRCODE_PAY"

    invoke-direct {v0, v1, v4, v4}, Lcom/netease/mpay/server/response/aa$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/mpay/server/response/aa$a;->c:Lcom/netease/mpay/server/response/aa$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/mpay/server/response/aa$a;

    sget-object v1, Lcom/netease/mpay/server/response/aa$a;->a:Lcom/netease/mpay/server/response/aa$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/mpay/server/response/aa$a;->b:Lcom/netease/mpay/server/response/aa$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/mpay/server/response/aa$a;->c:Lcom/netease/mpay/server/response/aa$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netease/mpay/server/response/aa$a;->e:[Lcom/netease/mpay/server/response/aa$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netease/mpay/server/response/aa$a;->d:I

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

.method public static a(I)Lcom/netease/mpay/server/response/aa$a;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/netease/mpay/server/response/aa$a;->a:Lcom/netease/mpay/server/response/aa$a;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/netease/mpay/server/response/aa$a;->b:Lcom/netease/mpay/server/response/aa$a;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/netease/mpay/server/response/aa$a;->c:Lcom/netease/mpay/server/response/aa$a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/server/response/aa$a;
    .locals 1

    const-class v0, Lcom/netease/mpay/server/response/aa$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/aa$a;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/server/response/aa$a;
    .locals 1

    sget-object v0, Lcom/netease/mpay/server/response/aa$a;->e:[Lcom/netease/mpay/server/response/aa$a;

    invoke-virtual {v0}, [Lcom/netease/mpay/server/response/aa$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/server/response/aa$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/server/response/aa$a;->d:I

    return v0
.end method
