.class public final Lcom/netease/mobile/link/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/MobileLinkActivity;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/MobileLinkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/o3;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/o3;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    const-string v1, "skip"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mobile/link/z5;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/netease/mobile/link/o3;->a:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    .line 2
    invoke-virtual {p1}, Lcom/netease/mobile/link/MobileLinkActivity$a;->b()V

    return-void
.end method
