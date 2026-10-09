.class public final Lcom/netease/mobile/link/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/netease/mobile/link/l$a;->a:Lcom/netease/mobile/link/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p1, p0, Lcom/netease/mobile/link/l$a;->a:Lcom/netease/mobile/link/l;

    .line 1
    invoke-virtual {p1}, Lcom/netease/mobile/link/l;->b()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
