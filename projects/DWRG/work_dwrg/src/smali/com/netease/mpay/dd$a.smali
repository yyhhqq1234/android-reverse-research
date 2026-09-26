.class public final enum Lcom/netease/mpay/dd$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/dd$a;

.field public static final enum b:Lcom/netease/mpay/dd$a;

.field private static final synthetic c:[Lcom/netease/mpay/dd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/mpay/dd$a;

    const-string v1, "WEIXIN"

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/dd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/dd$a;->a:Lcom/netease/mpay/dd$a;

    new-instance v0, Lcom/netease/mpay/dd$a;

    const-string v1, "TENPAY"

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/dd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/dd$a;->b:Lcom/netease/mpay/dd$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netease/mpay/dd$a;

    sget-object v1, Lcom/netease/mpay/dd$a;->a:Lcom/netease/mpay/dd$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mpay/dd$a;->b:Lcom/netease/mpay/dd$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/mpay/dd$a;->c:[Lcom/netease/mpay/dd$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/dd$a;
    .locals 1

    const-class v0, Lcom/netease/mpay/dd$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/dd$a;

    return-object v0
.end method

.method public static values()[Lcom/netease/mpay/dd$a;
    .locals 1

    sget-object v0, Lcom/netease/mpay/dd$a;->c:[Lcom/netease/mpay/dd$a;

    invoke-virtual {v0}, [Lcom/netease/mpay/dd$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/dd$a;

    return-object v0
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 3

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->al:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/netease/mpay/dn;->a:[I

    invoke-virtual {p0}, Lcom/netease/mpay/dd$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->eb:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/netease/mpay/dn;->a:[I

    invoke-virtual {p0}, Lcom/netease/mpay/dd$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p1}, Lcom/netease/mpay/m;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/netease/mpay/m;->b(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
