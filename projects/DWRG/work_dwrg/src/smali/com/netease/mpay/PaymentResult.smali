.class public final enum Lcom/netease/mpay/PaymentResult;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ASSETS_ERROR:Lcom/netease/mpay/PaymentResult;

.field public static final enum CALLBACK_EMPTY:Lcom/netease/mpay/PaymentResult;

.field public static final enum NETWORK_ERROR:Lcom/netease/mpay/PaymentResult;

.field public static final enum ORDER_EMPTY:Lcom/netease/mpay/PaymentResult;

.field public static final enum ORDER_ERROR:Lcom/netease/mpay/PaymentResult;

.field public static final enum PAY_CHANNEL_ERROR:Lcom/netease/mpay/PaymentResult;

.field public static final enum PAY_CHANNEL_UNKNOWN:Lcom/netease/mpay/PaymentResult;

.field public static final enum SUCCESS:Lcom/netease/mpay/PaymentResult;

.field public static final enum USER_CANCEL:Lcom/netease/mpay/PaymentResult;

.field public static final enum USER_ERROR:Lcom/netease/mpay/PaymentResult;

.field public static final enum USER_LOGOUT:Lcom/netease/mpay/PaymentResult;

.field private static final synthetic c:[Lcom/netease/mpay/PaymentResult;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/netease/mpay/PaymentResult;

    const-string v1, "SUCCESS"

    const-string v2, "ok"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/netease/mpay/PaymentResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/PaymentResult;->SUCCESS:Lcom/netease/mpay/PaymentResult;

    new-instance v0, Lcom/netease/mpay/PaymentResult;

    const-string v1, "ORDER_EMPTY"

    const-string v2, "order is empty"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/netease/mpay/PaymentResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/PaymentResult;->ORDER_EMPTY:Lcom/netease/mpay/PaymentResult;

    new-instance v0, Lcom/netease/mpay/PaymentResult;

    const-string v1, "CALLBACK_EMPTY"

    const-string v2, "callback is empty"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/netease/mpay/PaymentResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/PaymentResult;->CALLBACK_EMPTY:Lcom/netease/mpay/PaymentResult;

    new-instance v0, Lcom/netease/mpay/PaymentResult;

    const-string v1, "ASSETS_ERROR"

    const-string v2, "asset config error"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/netease/mpay/PaymentResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/PaymentResult;->ASSETS_ERROR:Lcom/netease/mpay/PaymentResult;

    new-instance v0, Lcom/netease/mpay/PaymentResult;

    const-string v1, "USER_ERROR"

    const-string v2, "pay user not found"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/netease/mpay/PaymentResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/PaymentResult;->USER_ERROR:Lcom/netease/mpay/PaymentResult;

    new-instance v0, Lcom/netease/mpay/PaymentResult;

    const-string v1, "ORDER_ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "order error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/PaymentResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/PaymentResult;->ORDER_ERROR:Lcom/netease/mpay/PaymentResult;

    new-instance v0, Lcom/netease/mpay/PaymentResult;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "network error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/PaymentResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/PaymentResult;->NETWORK_ERROR:Lcom/netease/mpay/PaymentResult;

    new-instance v0, Lcom/netease/mpay/PaymentResult;

    const-string v1, "PAY_CHANNEL_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string v4, "pay channel error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/PaymentResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/PaymentResult;->PAY_CHANNEL_ERROR:Lcom/netease/mpay/PaymentResult;

    new-instance v0, Lcom/netease/mpay/PaymentResult;

    const-string v1, "USER_LOGOUT"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "user has logged out"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/PaymentResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/PaymentResult;->USER_LOGOUT:Lcom/netease/mpay/PaymentResult;

    new-instance v0, Lcom/netease/mpay/PaymentResult;

    const-string v1, "USER_CANCEL"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string v4, "user cancel the transaction"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/PaymentResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/PaymentResult;->USER_CANCEL:Lcom/netease/mpay/PaymentResult;

    new-instance v0, Lcom/netease/mpay/PaymentResult;

    const-string v1, "PAY_CHANNEL_UNKNOWN"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-string v4, "pay channel unknown"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/PaymentResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/PaymentResult;->PAY_CHANNEL_UNKNOWN:Lcom/netease/mpay/PaymentResult;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/netease/mpay/PaymentResult;

    sget-object v1, Lcom/netease/mpay/PaymentResult;->SUCCESS:Lcom/netease/mpay/PaymentResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/mpay/PaymentResult;->ORDER_EMPTY:Lcom/netease/mpay/PaymentResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/mpay/PaymentResult;->CALLBACK_EMPTY:Lcom/netease/mpay/PaymentResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netease/mpay/PaymentResult;->ASSETS_ERROR:Lcom/netease/mpay/PaymentResult;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netease/mpay/PaymentResult;->USER_ERROR:Lcom/netease/mpay/PaymentResult;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/netease/mpay/PaymentResult;->ORDER_ERROR:Lcom/netease/mpay/PaymentResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netease/mpay/PaymentResult;->NETWORK_ERROR:Lcom/netease/mpay/PaymentResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netease/mpay/PaymentResult;->PAY_CHANNEL_ERROR:Lcom/netease/mpay/PaymentResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netease/mpay/PaymentResult;->USER_LOGOUT:Lcom/netease/mpay/PaymentResult;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netease/mpay/PaymentResult;->USER_CANCEL:Lcom/netease/mpay/PaymentResult;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netease/mpay/PaymentResult;->PAY_CHANNEL_UNKNOWN:Lcom/netease/mpay/PaymentResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netease/mpay/PaymentResult;->c:[Lcom/netease/mpay/PaymentResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netease/mpay/PaymentResult;->a:I

    iput-object p4, p0, Lcom/netease/mpay/PaymentResult;->b:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/PaymentResult;
    .locals 1

    const-class v0, Lcom/netease/mpay/PaymentResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/PaymentResult;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/PaymentResult;
    .locals 1

    sget-object v0, Lcom/netease/mpay/PaymentResult;->c:[Lcom/netease/mpay/PaymentResult;

    invoke-virtual {v0}, [Lcom/netease/mpay/PaymentResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/PaymentResult;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/PaymentResult;->a:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/PaymentResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    sget-object v0, Lcom/netease/mpay/PaymentResult;->SUCCESS:Lcom/netease/mpay/PaymentResult;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/netease/mpay/PaymentResult;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/PaymentResult;->b:Ljava/lang/String;

    return-object p0
.end method
