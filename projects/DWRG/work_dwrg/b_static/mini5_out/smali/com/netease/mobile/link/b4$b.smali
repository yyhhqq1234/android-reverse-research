.class public final Lcom/netease/mobile/link/b4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobile/link/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/Window;

.field public final c:[Lcom/netease/mobile/link/a4$a;

.field public final synthetic d:Lcom/netease/mobile/link/b4;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/b4;Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mobile/link/a4$a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/b4$b;->d:Lcom/netease/mobile/link/b4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mobile/link/b4$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/mobile/link/b4$b;->b:Landroid/view/Window;

    iput-object p4, p0, Lcom/netease/mobile/link/b4$b;->c:[Lcom/netease/mobile/link/a4$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mobile/link/b4$b;->d:Lcom/netease/mobile/link/b4;

    iget-object v1, p0, Lcom/netease/mobile/link/b4$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mobile/link/b4$b;->b:Landroid/view/Window;

    iget-object v3, p0, Lcom/netease/mobile/link/b4$b;->c:[Lcom/netease/mobile/link/a4$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mobile/link/a4;->b(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mobile/link/a4$a;)V

    return-void
.end method
