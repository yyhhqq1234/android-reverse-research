.class public final Lcom/netease/mpay/widget/RIdentifier$i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/RIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NeteaseMpay.AlertDialog"

    const-string v1, "style"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$i;->a:I

    const-string v0, "NeteaseMpay.Login.LoginTheme"

    const-string v1, "style"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$i;->b:I

    const-string v0, "NeteaseMpay.Login.ProgressDialog"

    const-string v1, "style"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$i;->c:I

    const-string v0, "NeteaseMpay.Login.WelcomePopupWindow"

    const-string v1, "style"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$i;->d:I

    const-string v0, "NeteaseMpay.Share.Theme"

    const-string v1, "style"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$i;->e:I

    const-string v0, "NeteaseMpay.Share.Theme.FullScreen"

    const-string v1, "style"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$i;->f:I

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
