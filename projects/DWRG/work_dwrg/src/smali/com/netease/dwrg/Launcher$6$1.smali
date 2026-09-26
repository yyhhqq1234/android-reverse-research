.class Lcom/netease/dwrg/Launcher$6$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Launcher$6;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/dwrg/Launcher$6;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Launcher$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/dwrg/Launcher$6;

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$6$1;->this$1:Lcom/netease/dwrg/Launcher$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$6$1;->this$1:Lcom/netease/dwrg/Launcher$6;

    iget-object v0, v0, Lcom/netease/dwrg/Launcher$6;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/dwrg/Launcher;->finish()V

    .line 1059
    return-void
.end method
