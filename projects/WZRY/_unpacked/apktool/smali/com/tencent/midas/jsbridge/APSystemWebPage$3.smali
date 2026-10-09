.class Lcom/tencent/midas/jsbridge/APSystemWebPage$3;
.super Ljava/lang/Object;
.source "APSystemWebPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/jsbridge/APSystemWebPage;->toPureH5Pay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;


# direct methods
.method constructor <init>(Lcom/tencent/midas/jsbridge/APSystemWebPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/jsbridge/APSystemWebPage;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tencent/midas/jsbridge/APSystemWebPage$3;->this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 114
    return-void
.end method
