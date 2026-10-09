.class public final Lcom/netease/mobile/link/i7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/n7;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/n7;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/i7;->a:Lcom/netease/mobile/link/n7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-static {}, Lcom/netease/mobile/link/p5;->a()Lcom/netease/mobile/link/p5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mobile/link/p5;->b()V

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/i7;->a:Lcom/netease/mobile/link/n7;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    if-eqz p2, :cond_0

    const-string p2, "agree"

    goto :goto_0

    :cond_0
    const-string p2, "disagree"

    .line 2
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/netease/mobile/link/z5;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
