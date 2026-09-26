.class public Lcom/netease/mpay/widget/av;
.super Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

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

.method public static a(Landroid/content/Context;Z)Lcom/netease/mpay/widget/av;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/netease/mpay/widget/av;->a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/netease/mpay/widget/av;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/netease/mpay/widget/av;
    .locals 3

    new-instance v0, Lcom/netease/mpay/widget/av;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$i;->c:I

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/widget/av;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->M:I

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/av;->setContentView(I)V

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/av;->setCancelable(Z)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/av;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
