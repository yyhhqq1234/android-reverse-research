.class public final Lcom/netease/mobile/link/h0$a;
.super Lcom/netease/mobile/link/h6$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/netease/mobile/link/h0;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/h0;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/h0$a;->b:Lcom/netease/mobile/link/h0;

    invoke-direct {p0}, Lcom/netease/mobile/link/h6$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/h0$a;->b:Lcom/netease/mobile/link/h0;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/p5;->a()Lcom/netease/mobile/link/p5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/p5;->b()V

    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/h0;->a(Landroid/view/View;)V

    const-string p1, "MobileLink"

    const-string v0, "CustomClickListener innerCustomClick() is called!"

    .line 3
    invoke-static {p1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
