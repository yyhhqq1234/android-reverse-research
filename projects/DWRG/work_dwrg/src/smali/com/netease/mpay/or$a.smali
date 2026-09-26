.class final enum Lcom/netease/mpay/or$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/or;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/or$a;

.field public static final enum b:Lcom/netease/mpay/or$a;

.field public static final enum c:Lcom/netease/mpay/or$a;

.field private static final synthetic d:[Lcom/netease/mpay/or$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/mpay/or$a;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/or$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/or$a;->a:Lcom/netease/mpay/or$a;

    new-instance v0, Lcom/netease/mpay/or$a;

    const-string v1, "APPLY_AUTH"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/or$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/or$a;->b:Lcom/netease/mpay/or$a;

    new-instance v0, Lcom/netease/mpay/or$a;

    const-string v1, "AUTH_DONE"

    invoke-direct {v0, v1, v4}, Lcom/netease/mpay/or$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/or$a;->c:Lcom/netease/mpay/or$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/mpay/or$a;

    sget-object v1, Lcom/netease/mpay/or$a;->a:Lcom/netease/mpay/or$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/or$a;->b:Lcom/netease/mpay/or$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/mpay/or$a;->c:Lcom/netease/mpay/or$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netease/mpay/or$a;->d:[Lcom/netease/mpay/or$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/or$a;
    .locals 1

    const-class v0, Lcom/netease/mpay/or$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/or$a;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/or$a;
    .locals 1

    sget-object v0, Lcom/netease/mpay/or$a;->d:[Lcom/netease/mpay/or$a;

    invoke-virtual {v0}, [Lcom/netease/mpay/or$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/or$a;

    return-object v0
.end method
