.class Lcom/tencent/midas/jsbridge/APX5WebPage$2;
.super Ljava/lang/Object;
.source "APX5WebPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/jsbridge/APX5WebPage;->toPureH5Pay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;


# direct methods
.method constructor <init>(Lcom/tencent/midas/jsbridge/APX5WebPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/jsbridge/APX5WebPage;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tencent/midas/jsbridge/APX5WebPage$2;->this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 93
    return-void
.end method
