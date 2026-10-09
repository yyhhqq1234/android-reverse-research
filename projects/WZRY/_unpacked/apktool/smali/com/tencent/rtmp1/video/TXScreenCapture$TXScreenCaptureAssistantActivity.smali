.class public Lcom/tencent/rtmp1/video/TXScreenCapture$TXScreenCaptureAssistantActivity;
.super Landroid/app/Activity;
.source "TXScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp1/video/TXScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TXScreenCaptureAssistantActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/16 v2, 0x3e9

    .line 51
    invoke-virtual {p0}, Lcom/tencent/rtmp1/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    const-string v1, "TXScreenCapture.ScreenCaptureIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 55
    const/16 v1, 0x3e9

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/tencent/rtmp1/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "TXScreenCapture.OnAssistantActivityResult"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v1, "TXScreenCapture.RequestCode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "TXScreenCapture.ResultCode"

    const v2, 0x1312d02

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp1/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/tencent/rtmp1/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->finish()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "TXScreenCapture.OnAssistantActivityResult"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    const-string v1, "TXScreenCapture.RequestCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const-string v1, "TXScreenCapture.ResultCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v1, "TXScreenCapture.ResultData"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp1/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/tencent/rtmp1/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->finish()V

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp1/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/tencent/rtmp1/video/TXScreenCapture$TXScreenCaptureAssistantActivity;->a()V

    .line 24
    return-void
.end method
