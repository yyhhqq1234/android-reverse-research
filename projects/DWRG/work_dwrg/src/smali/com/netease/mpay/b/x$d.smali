.class public final enum Lcom/netease/mpay/b/x$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/b/x$d;

.field public static final enum b:Lcom/netease/mpay/b/x$d;

.field private static final synthetic c:[Lcom/netease/mpay/b/x$d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/mpay/b/x$d;

    const-string v1, "ORDER_PAY"

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/b/x$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/b/x$d;->a:Lcom/netease/mpay/b/x$d;

    new-instance v0, Lcom/netease/mpay/b/x$d;

    const-string v1, "ORDER_INDEX_PAY"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/b/x$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/b/x$d;->b:Lcom/netease/mpay/b/x$d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netease/mpay/b/x$d;

    sget-object v1, Lcom/netease/mpay/b/x$d;->a:Lcom/netease/mpay/b/x$d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/b/x$d;->b:Lcom/netease/mpay/b/x$d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/mpay/b/x$d;->c:[Lcom/netease/mpay/b/x$d;

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

.method static a(I)Lcom/netease/mpay/b/x$d;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/netease/mpay/b/x$d;->values()[Lcom/netease/mpay/b/x$d;

    move-result-object v0

    aget-object v0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/b/x$d;
    .locals 1

    const-class v0, Lcom/netease/mpay/b/x$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/b/x$d;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/b/x$d;
    .locals 1

    sget-object v0, Lcom/netease/mpay/b/x$d;->c:[Lcom/netease/mpay/b/x$d;

    invoke-virtual {v0}, [Lcom/netease/mpay/b/x$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/b/x$d;

    return-object v0
.end method
