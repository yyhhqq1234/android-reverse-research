.class public final Lcom/netease/mobile/link/l$c;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/l;-><init>(Landroid/widget/EditText;Landroid/view/View;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/l;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/l;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/l$c;->c:Lcom/netease/mobile/link/l;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/netease/mobile/link/l$c;->c:Lcom/netease/mobile/link/l;

    iget-object p1, p1, Lcom/netease/mobile/link/l;->a:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
