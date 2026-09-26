.class public final enum Lcom/netease/mpay/f/a/d$f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "f"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/f/a/d$f;

.field public static final enum b:Lcom/netease/mpay/f/a/d$f;

.field private static final synthetic c:[Lcom/netease/mpay/f/a/d$f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/mpay/f/a/d$f;

    const-string v1, "LOADING_PAGE"

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/f/a/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/d$f;->a:Lcom/netease/mpay/f/a/d$f;

    new-instance v0, Lcom/netease/mpay/f/a/d$f;

    const-string v1, "PROGRESS_DIALOG"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/f/a/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/f/a/d$f;->b:Lcom/netease/mpay/f/a/d$f;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netease/mpay/f/a/d$f;

    sget-object v1, Lcom/netease/mpay/f/a/d$f;->a:Lcom/netease/mpay/f/a/d$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/f/a/d$f;->b:Lcom/netease/mpay/f/a/d$f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/mpay/f/a/d$f;->c:[Lcom/netease/mpay/f/a/d$f;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/f/a/d$f;
    .locals 1

    const-class v0, Lcom/netease/mpay/f/a/d$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/f/a/d$f;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/f/a/d$f;
    .locals 1

    sget-object v0, Lcom/netease/mpay/f/a/d$f;->c:[Lcom/netease/mpay/f/a/d$f;

    invoke-virtual {v0}, [Lcom/netease/mpay/f/a/d$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/f/a/d$f;

    return-object v0
.end method
