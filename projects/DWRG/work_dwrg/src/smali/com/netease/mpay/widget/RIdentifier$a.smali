.class public final Lcom/netease/mpay/widget/RIdentifier$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/RIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "netease_mpay__loading_rotate"

    const-string v1, "anim"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$a;->a:I

    const-string v0, "netease_mpay__login_fade_in_normal"

    const-string v1, "anim"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$a;->b:I

    const-string v0, "netease_mpay__login_fade_out_normal"

    const-string v1, "anim"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$a;->c:I

    const-string v0, "netease_mpay__login_slip_in_from_right"

    const-string v1, "anim"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$a;->d:I

    const-string v0, "netease_mpay__login_slip_out_to_left"

    const-string v1, "anim"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$a;->e:I

    const-string v0, "netease_mpay__share_activity_enter"

    const-string v1, "anim"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$a;->f:I

    const-string v0, "netease_mpay__share_activity_exit"

    const-string v1, "anim"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/RIdentifier;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netease/mpay/widget/RIdentifier$a;->g:I

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
