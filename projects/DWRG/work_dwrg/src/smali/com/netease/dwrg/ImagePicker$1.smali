.class Lcom/netease/dwrg/ImagePicker$1;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 162
    iput-object p1, p0, Lcom/netease/dwrg/ImagePicker$1;->this$0:Lcom/netease/dwrg/ImagePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker$1;->this$0:Lcom/netease/dwrg/ImagePicker;

    invoke-static {v0}, Lcom/netease/dwrg/ImagePicker;->access$000(Lcom/netease/dwrg/ImagePicker;)V

    .line 166
    return-void
.end method
