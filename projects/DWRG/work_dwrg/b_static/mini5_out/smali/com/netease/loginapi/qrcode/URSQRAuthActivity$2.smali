.class public Lcom/netease/loginapi/qrcode/URSQRAuthActivity$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->showStateView(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$2;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$2;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-static {p1}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->access$500(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)V

    const/4 p1, 0x1

    return p1
.end method
