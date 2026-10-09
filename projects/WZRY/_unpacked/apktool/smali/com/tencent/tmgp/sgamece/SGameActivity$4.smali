.class Lcom/tencent/tmgp/sgamece/SGameActivity$4;
.super Ljava/lang/Object;
.source "SGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmgp/sgamece/SGameActivity;->CopyTextToClipboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tmgp/sgamece/SGameActivity;


# direct methods
.method constructor <init>(Lcom/tencent/tmgp/sgamece/SGameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tmgp/sgamece/SGameActivity$4;->this$0:Lcom/tencent/tmgp/sgamece/SGameActivity;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 373
    const-string v2, "sgame"

    const-string v3, "CopyTextToClipboard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Lcom/tencent/tmgp/sgamece/SGameActivity$4;->this$0:Lcom/tencent/tmgp/sgamece/SGameActivity;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Lcom/tencent/tmgp/sgamece/SGameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 375
    .local v1, "cm":Landroid/content/ClipboardManager;
    const-string v2, "data"

    iget-object v3, p0, Lcom/tencent/tmgp/sgamece/SGameActivity$4;->this$0:Lcom/tencent/tmgp/sgamece/SGameActivity;

    invoke-static {v3}, Lcom/tencent/tmgp/sgamece/SGameActivity;->access$0(Lcom/tencent/tmgp/sgamece/SGameActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 376
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 377
    return-void
.end method
