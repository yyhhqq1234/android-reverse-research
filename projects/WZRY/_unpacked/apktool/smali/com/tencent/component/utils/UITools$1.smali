.class final Lcom/tencent/component/utils/UITools$1;
.super Ljava/lang/Object;
.source "UITools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/utils/UITools;->showToast(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tencent/component/utils/UITools$1;->val$text:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/tencent/component/utils/UITools$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/component/utils/UITools$1;->val$text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/tencent/component/utils/UITools$1;->val$duration:I

    invoke-static {v0, v1}, Lcom/tencent/component/utils/UITools;->access$000(Ljava/lang/CharSequence;I)V

    .line 40
    return-void
.end method
