.class Lcom/netease/dwrg/ImagePicker$3;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/ImagePicker;->execute(IILjava/lang/String;IIIIIILjava/lang/String;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/ImagePicker;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/ImagePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/ImagePicker;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/netease/dwrg/ImagePicker$3;->this$0:Lcom/netease/dwrg/ImagePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker$3;->this$0:Lcom/netease/dwrg/ImagePicker;

    invoke-static {v0}, Lcom/netease/dwrg/ImagePicker;->access$000(Lcom/netease/dwrg/ImagePicker;)V

    .line 193
    return-void
.end method
