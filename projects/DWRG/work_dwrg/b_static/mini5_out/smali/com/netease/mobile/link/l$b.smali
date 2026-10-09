.class public final Lcom/netease/mobile/link/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/l;-><init>(Landroid/widget/EditText;Landroid/view/View;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/l;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/l;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/l$b;->a:Lcom/netease/mobile/link/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lcom/netease/mobile/link/l$b;->a:Lcom/netease/mobile/link/l;

    .line 1
    invoke-virtual {p1}, Lcom/netease/mobile/link/l;->b()V

    .line 2
    iget-object p1, p0, Lcom/netease/mobile/link/l$b;->a:Lcom/netease/mobile/link/l;

    iget-object p1, p1, Lcom/netease/mobile/link/l;->a:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    return-void
.end method
