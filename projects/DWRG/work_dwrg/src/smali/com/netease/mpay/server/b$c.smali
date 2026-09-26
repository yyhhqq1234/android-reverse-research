.class public final enum Lcom/netease/mpay/server/b$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/server/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/server/b$c;

.field public static final enum b:Lcom/netease/mpay/server/b$c;

.field public static final enum c:Lcom/netease/mpay/server/b$c;

.field public static final enum d:Lcom/netease/mpay/server/b$c;

.field public static final enum e:Lcom/netease/mpay/server/b$c;

.field public static final enum f:Lcom/netease/mpay/server/b$c;

.field private static final synthetic g:[Lcom/netease/mpay/server/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netease/mpay/server/b$c;

    const-string v1, "NICKNAME"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/server/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/server/b$c;->a:Lcom/netease/mpay/server/b$c;

    new-instance v0, Lcom/netease/mpay/server/b$c;

    const-string v1, "AVATAR"

    invoke-direct {v0, v1, v4}, Lcom/netease/mpay/server/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/server/b$c;->b:Lcom/netease/mpay/server/b$c;

    new-instance v0, Lcom/netease/mpay/server/b$c;

    const-string v1, "EXIT_POPUP_INFO"

    invoke-direct {v0, v1, v5}, Lcom/netease/mpay/server/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/server/b$c;->c:Lcom/netease/mpay/server/b$c;

    new-instance v0, Lcom/netease/mpay/server/b$c;

    const-string v1, "REALNAME_STATUS"

    invoke-direct {v0, v1, v6}, Lcom/netease/mpay/server/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/server/b$c;->d:Lcom/netease/mpay/server/b$c;

    new-instance v0, Lcom/netease/mpay/server/b$c;

    const-string v1, "MOBILE_BIND_STATUS"

    invoke-direct {v0, v1, v7}, Lcom/netease/mpay/server/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/server/b$c;->e:Lcom/netease/mpay/server/b$c;

    new-instance v0, Lcom/netease/mpay/server/b$c;

    const-string v1, "ECARD_BALANCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/server/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/server/b$c;->f:Lcom/netease/mpay/server/b$c;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netease/mpay/server/b$c;

    sget-object v1, Lcom/netease/mpay/server/b$c;->a:Lcom/netease/mpay/server/b$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/mpay/server/b$c;->b:Lcom/netease/mpay/server/b$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/mpay/server/b$c;->c:Lcom/netease/mpay/server/b$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/mpay/server/b$c;->d:Lcom/netease/mpay/server/b$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/mpay/server/b$c;->e:Lcom/netease/mpay/server/b$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netease/mpay/server/b$c;->f:Lcom/netease/mpay/server/b$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netease/mpay/server/b$c;->g:[Lcom/netease/mpay/server/b$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/server/b$c;
    .locals 1

    const-class v0, Lcom/netease/mpay/server/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/b$c;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/server/b$c;
    .locals 1

    sget-object v0, Lcom/netease/mpay/server/b$c;->g:[Lcom/netease/mpay/server/b$c;

    invoke-virtual {v0}, [Lcom/netease/mpay/server/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/server/b$c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/netease/mpay/server/c;->a:[I

    invoke-virtual {p0}, Lcom/netease/mpay/server/b$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "nickname"

    goto :goto_0

    :pswitch_1
    const-string v0, "avatar"

    goto :goto_0

    :pswitch_2
    const-string v0, "exit_popup_info"

    goto :goto_0

    :pswitch_3
    const-string v0, "realname_status"

    goto :goto_0

    :pswitch_4
    const-string v0, "mobile_bind_status"

    goto :goto_0

    :pswitch_5
    const-string v0, "ecard_balance"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
