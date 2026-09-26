.class final enum Lcom/netease/mpay/widget/b/c$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/widget/b/c$d;

.field public static final enum b:Lcom/netease/mpay/widget/b/c$d;

.field public static final enum c:Lcom/netease/mpay/widget/b/c$d;

.field private static final synthetic d:[Lcom/netease/mpay/widget/b/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/mpay/widget/b/c$d;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/b/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/b/c$d;->a:Lcom/netease/mpay/widget/b/c$d;

    new-instance v0, Lcom/netease/mpay/widget/b/c$d;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/widget/b/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/b/c$d;->b:Lcom/netease/mpay/widget/b/c$d;

    new-instance v0, Lcom/netease/mpay/widget/b/c$d;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/netease/mpay/widget/b/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/widget/b/c$d;->c:Lcom/netease/mpay/widget/b/c$d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/mpay/widget/b/c$d;

    sget-object v1, Lcom/netease/mpay/widget/b/c$d;->a:Lcom/netease/mpay/widget/b/c$d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/widget/b/c$d;->b:Lcom/netease/mpay/widget/b/c$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/mpay/widget/b/c$d;->c:Lcom/netease/mpay/widget/b/c$d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netease/mpay/widget/b/c$d;->d:[Lcom/netease/mpay/widget/b/c$d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/widget/b/c$d;
    .locals 1

    const-class v0, Lcom/netease/mpay/widget/b/c$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/b/c$d;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/widget/b/c$d;
    .locals 1

    sget-object v0, Lcom/netease/mpay/widget/b/c$d;->d:[Lcom/netease/mpay/widget/b/c$d;

    invoke-virtual {v0}, [Lcom/netease/mpay/widget/b/c$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/widget/b/c$d;

    return-object v0
.end method
