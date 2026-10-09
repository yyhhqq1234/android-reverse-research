.class public Lcom/netease/loginapi/qrcode/URSCaptureActivity$6;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/loginapi/qrcode/URSCaptureActivity;->showNotLoginDialogAndExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$6;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$6;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
