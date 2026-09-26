.class Lcom/netease/mpay/codescanner/y$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/PaymentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/codescanner/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/y;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/codescanner/y;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/y$a;->a:Lcom/netease/mpay/codescanner/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method synthetic constructor <init>(Lcom/netease/mpay/codescanner/y;Lcom/netease/mpay/codescanner/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/codescanner/y$a;-><init>(Lcom/netease/mpay/codescanner/y;)V

    return-void
.end method


# virtual methods
.method public onFinish(ILcom/netease/mpay/PaymentResult;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y$a;->a:Lcom/netease/mpay/codescanner/y;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/y;->a(Lcom/netease/mpay/codescanner/y;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/y$a;->a:Lcom/netease/mpay/codescanner/y;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y$a;->a:Lcom/netease/mpay/codescanner/y;

    invoke-static {v1}, Lcom/netease/mpay/codescanner/y;->d(Lcom/netease/mpay/codescanner/y;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->db:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/codescanner/y;->a(Lcom/netease/mpay/codescanner/y;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
